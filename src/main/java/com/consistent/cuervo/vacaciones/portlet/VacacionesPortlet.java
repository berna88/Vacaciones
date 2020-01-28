package com.consistent.cuervo.vacaciones.portlet;

import com.consistent.cuervo.vacaciones.constants.VacacionesPortletKeys;
import com.consistent.cuervo.vacaciones.models.AddRequestVacation;
import com.consistent.cuervo.vacaciones.models.History;
import com.consistent.cuervo.vacaciones.models.ServiceVacations;
import com.consistent.cuervo.vacaciones.models.UserVacaciones;
import com.consistent.cuervo.vacaciones.portal.Portal;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.PortalUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.kernel.util.WebKeys;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.osgi.service.component.annotations.Component;

/**
 * @author bernardohernadez
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.header-portlet-css=/css/bootstrap-datepicker.css",
		"com.liferay.portlet.header-portlet-css=/css/loader.css",
		"com.liferay.portlet.header-portlet-css=/css/calendar.css",
		"com.liferay.portlet.footer-portlet-javascript=/js/bootstrap-datepicker.min.js",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + VacacionesPortletKeys.Vacaciones,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class VacacionesPortlet extends MVCPortlet {
	
	private static Log log = LogFactoryUtil.getLog(VacacionesPortlet.class.getName());
	private UserVacaciones vacaciones;
	@Override
	public void render(RenderRequest renderRequest, RenderResponse renderResponse){
		
		try {
			User user = PortalUtil.getUser(renderRequest);//Obtiene el usuario en sesion
			
			vacaciones = new UserVacaciones(user);
			
			if(vacaciones.getUser() != null) {
				log.info("Logeado");
				renderRequest.setAttribute("Empleado", vacaciones);
				renderRequest.setAttribute("users", Portal.getUsers());
			}else {
				log.info("El usuario no ha iniciado sesion");
				UserVacaciones userSinConexion = new UserVacaciones();
				renderRequest.setAttribute("Empleado", userSinConexion);
			}
			
			super.render(renderRequest, renderResponse);
			
		} catch (PortalException e) {
			// TODO Auto-generated catch block
			log.error("render PortalException: ");
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			log.error("render IOException: ");
			e.printStackTrace();
		} catch (PortletException e) {
			// TODO Auto-generated catch block
			log.error("render: PortletException");
			e.printStackTrace();
		}
		
		
	}
	
	@Override
	public void serveResource(ResourceRequest resourceRequest, ResourceResponse resourceResponse) throws IOException, PortletException {
		String idReg = ParamUtil.getString(resourceRequest, "_id");
		String nameParam = ParamUtil.getString(resourceRequest, "mvcPath");
		JSONObject jsonHistory = null;
		File tempFile = null;
		History historyFilter = new History();
		String strAjaxErrorResponse = null;
		if(nameParam != null && nameParam.equalsIgnoreCase("getReg")) {
			historyFilter = vacaciones.findReg(Integer.parseInt(idReg));
			jsonHistory = JSONFactoryUtil.createJSONObject();
			jsonHistory.put("nombre", historyFilter.getNombre());
			jsonHistory.put("diasATomar", historyFilter.getDiasATomar());
			jsonHistory.put("fechaC", historyFilter.getFechac());
			jsonHistory.put("fechaFinal", historyFilter.getFechaFinal());
			jsonHistory.put("claveLocalidad", historyFilter.getClaveLocalidad());
			jsonHistory.put("fechaInicio", historyFilter.getFechaInicio());
			jsonHistory.put("gerente", historyFilter.getGerente());
			jsonHistory.put("jefe", historyFilter.getJefe());
			jsonHistory.put("reg", historyFilter.getReg());
		} else if ( nameParam != null && nameParam.equalsIgnoreCase("addRequestVacation")) {
			String strInicio = ParamUtil.getString(resourceRequest, "Inicio");
			String strFinal = ParamUtil.getString(resourceRequest, "Final");
			String strDiasTomar = ParamUtil.getString(resourceRequest, "Diasatomar");
			String strGerente = ParamUtil.getString(resourceRequest, "Gerente");
			String strNomina = ParamUtil.getString(resourceRequest, "Nomina");
			String strJefe = ParamUtil.getString(resourceRequest, "Jefe");
			String strPeriodo = ParamUtil.getString(resourceRequest, "Periodo");
			String strRh = ParamUtil.getString(resourceRequest, "Rhvobo");
			String strPortalURL = ParamUtil.getString(resourceRequest, "portalURL");
			
			User user = null;;
			try {
				user = PortalUtil.getUser(resourceRequest);
			} catch (PortalException e) {
				e.printStackTrace();
			}
			
			String strNoEmpleado = "";
			if(user != null)
				strNoEmpleado = user.getExpandoBridge().hasAttribute("No_Empleado")? user.getExpandoBridge().getAttribute("No_Empleado").toString(): "";
				
			ServiceVacations vacations = null;
			if(!strNoEmpleado.equalsIgnoreCase("")) {
				vacations = new ServiceVacations(VacacionesPortletKeys.PATH_HISTORY, strNoEmpleado);
				JsonParser parser = new JsonParser();
				JsonObject objectJson = parser.parse(vacations.getJSON()).getAsJsonObject();
				String saldo = null;
				if (!objectJson.isJsonNull()) {
					
					saldo = objectJson.get("Saldo").getAsString();
				}
				
				if(saldo != null && !saldo.equalsIgnoreCase("")) {
					if(Integer.parseInt(saldo) < Integer.parseInt(strDiasTomar)) {
						strAjaxErrorResponse = "No puede solicitar mas días de los que tiene disponibles";
					}else {
						ThemeDisplay td = (ThemeDisplay)resourceRequest.getAttribute(WebKeys.THEME_DISPLAY);
						tempFile = AddRequestVacation.addRequestVacation(strInicio, strFinal, strDiasTomar, strGerente, strNomina, strJefe, strPeriodo, strRh, user, td, strPortalURL);
					}
				}
			}
			
		}
		
		if(resourceResponse.getStatus() == 200) {
			if(tempFile == null) {
				if(strAjaxErrorResponse != null) {
					jsonHistory = JSONFactoryUtil.createJSONObject();
					jsonHistory.put("Error", "500");
					jsonHistory.put("Message", "No puede solicitar mas días de los que tiene disponibles");
					resourceResponse.setStatus(700);
				}
				resourceResponse.getWriter().write(jsonHistory.toJSONString());
			}
			else {
				resourceResponse.setContentType("application/pdf");
				resourceResponse.addProperty("Content-disposition", "atachment; filename=Solicitud_Vacaciones.pdf");
				OutputStream out = null;
				InputStream in = null;
				try {
					out = resourceResponse.getPortletOutputStream();
					in = new FileInputStream(tempFile);
					IOUtils.copy(in, out);		
				} catch (final IOException e) {
					e.printStackTrace();
				} finally {
					try {
						if (Validator.isNotNull(out)) {
							out.flush();
							out.close();
						}
						if (Validator.isNotNull(in)) {
							in.close();
						}

					} catch (final IOException e) {
						e.printStackTrace();
					}
				}
			}
				
		}
		
	}
}
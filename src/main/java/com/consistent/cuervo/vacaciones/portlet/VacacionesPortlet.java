package com.consistent.cuervo.vacaciones.portlet;

import com.consistent.cuervo.vacaciones.constants.VacacionesPortletKeys;
import com.consistent.cuervo.vacaciones.models.AddRequestVacation;
import com.consistent.cuervo.vacaciones.models.History;
import com.consistent.cuervo.vacaciones.models.UserVacaciones;
import com.consistent.cuervo.vacaciones.portal.Portal;
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
import com.liferay.portal.kernel.util.WebKeys;

import java.io.IOException;

import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import org.osgi.service.component.annotations.Component;

/**
 * @author bernardohernadez
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
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
		String nameParam = ParamUtil.getString(renderRequest, "mvcPath");
		System.out.println("mvc "+ nameParam);
		
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
	public void serveResource(ResourceRequest resourceRequest, ResourceResponse resourceResponse)
			throws IOException, PortletException {
		log.info("<------ Resource ------->");
		String idReg = ParamUtil.getString(resourceRequest, "_id");
		String nameParam = ParamUtil.getString(resourceRequest, "mvcPath");
		System.out.println("nameParam " + nameParam);
		JSONObject jsonHistory = null;
		History historyFilter = new History();
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
			String strRhVoBo = ParamUtil.getString(resourceRequest, "Rhvobo");
			
			String strResponse = AddRequestVacation.addRequestVacation(strInicio, strFinal, strDiasTomar, strGerente, strNomina, strJefe, strPeriodo, strRhVoBo);
		}
		
		if(resourceResponse.getStatus() == 200) {
			resourceResponse.getWriter().write(jsonHistory.toJSONString());
		}
		
	}
}
package com.consistent.cuervo.vacaciones.portlet;

import com.consistent.cuervo.vacaciones.constants.VacacionesPortletKeys;
import com.consistent.cuervo.vacaciones.models.UserVacaciones;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.service.UserLocalServiceUtil;
import com.liferay.portal.kernel.util.PortalUtil;

import java.io.IOException;

import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

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
	@Override
	public void render(RenderRequest renderRequest, RenderResponse renderResponse)
			throws IOException, PortletException {
		try {
			User user = PortalUtil.getUser(renderRequest);
			System.out.println("1");
			UserVacaciones vacaciones = new UserVacaciones(user);
			System.out.println("2");
			renderRequest.setAttribute("NoEmpleado", vacaciones.getNoEmpleado());
		} catch (PortalException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
		super.render(renderRequest, renderResponse);
	}
}
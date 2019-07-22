package com.eale.carrentalsystem.common.Interceptor;


import com.eale.carrentalsystem.bean.Rolemenu;
import com.eale.carrentalsystem.bean.SystemMenu;
import com.eale.carrentalsystem.bean.User;
import com.eale.carrentalsystem.common.Tool;
import com.eale.carrentalsystem.dao.RolepowerlistDao;
import com.eale.carrentalsystem.dao.SystemMenuDao;
import com.eale.carrentalsystem.dao.UserDao;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.InetAddress;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

@Component
public class recordInterceptor extends HandlerInterceptorAdapter {


	Tool tool;




	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session=request.getSession();
		RequestWrapper requestWrapper = new RequestWrapper(request);
		//获取当前访问的路径
		System.out.println("rrequestWrapper"+requestWrapper.getBody()+"...");
		String url = request.getRequestURL().toString();
		String zhuan="notlimit";
		System.out.println(printHttpRequest(request));
		System.out.println(request.getParameter("vehicleName"));
		System.out.println(url);
		if(!StringUtils.isEmpty(session.getAttribute("userId"))){
//			//获取当前访问的路径
//			String url = request.getRequestURL().toString();
//			String zhuan="notlimit";
//
//			System.out.println(url);
		//导入dao类
		UserDao udao=tool.getBean(UserDao.class, request);
		RolepowerlistDao rpdao=tool.getBean(RolepowerlistDao.class, request);
		Long uid=Long.parseLong(session.getAttribute("userId")+"");
		User user=udao.findByUserId(uid).get(0);
		List<Rolemenu> oneMenuAll=rpdao.findbyparentxianall(0L, user.getRole().getRoleId(), true,false);
		List<Rolemenu> twoMenuAll=rpdao.findbyparentsxian(0L, user.getRole().getRoleId(), true,false);
		List<Rolemenu>  all=new ArrayList<>();


		if(oneMenuAll.size()>0){
				all.addAll(oneMenuAll);
			}
			if(twoMenuAll.size()>0){
				all.addAll(twoMenuAll);
			}
			for (Rolemenu rolemenu : all) {
				if(!rolemenu.getMenuUrl().equals(url)){

					return true;
				}else{
					request.getRequestDispatcher(zhuan).forward(request, response);
				}

			}

		}else{
			response.sendRedirect("/logins");
		}

		return super.preHandle(request, response, handler);
	}


	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		HttpSession session=request.getSession();
		//导入dao类
		UserDao userDao=tool.getBean(UserDao.class, request);
		SystemMenuDao systemMenuDao=tool.getBean(SystemMenuDao.class, request);

		//首先就获取ip
		InetAddress ia=null;
		ia=ia.getLocalHost();
		String ip=ia.getHostAddress();


		//还没有登陆不能获取session

//		uLog.setUser(userDao.findOne(1l));
		//从菜单表里面匹配
		List<SystemMenu> sMenus=(List<SystemMenu>) systemMenuDao.findAll();
		for (SystemMenu systemMenu : sMenus) {
			if(systemMenu.getMenuUrl().equals(request.getServletPath())){
				//只有当该记录的路径不等于第一条的时候
				//只要匹配到一个保存咯
			}
		}


	}

	private static String printHttpRequest(HttpServletRequest request) {
		StringBuilder sb = new StringBuilder();
		Principal p = request.getUserPrincipal();
		sb.append("User: ").append(p == null ? "unknown" : p);
		sb.append(" - Path: ").append(getQueryParameters(request));
		sb.append(" - Header: ").append(getHeaders(request));
		sb.append(" - Entity: ").append(getEntityBody(request));
		return "HTTP REQUEST : " + sb.toString();
	}

	private static String getQueryParameters(HttpServletRequest request) {
		StringBuilder sb = new StringBuilder();
		sb.append(request.getRequestURI())//
				.append("?");
		boolean firstParam = true;
		for (Map.Entry<String, String[]> e : request.getParameterMap().entrySet()) {
			if (!firstParam) {
				sb.append("&");
			}
			sb.append(e.getKey()).append("=");
			boolean firstValue = true;
			for (String v : e.getValue()) {
				if (!firstValue) {
					sb.append(",");
				}
				sb.append(v);
				firstValue = false;
			}
			firstParam = false;
		}
		return sb.toString();
	}

	private static String getHeaders(HttpServletRequest request) {
		StringBuilder sb = new StringBuilder();
		sb.append("{");
		Enumeration headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String key = (String) headerNames.nextElement();
			sb.append("\"")//
					.append(key)//
					.append("\"")//
					.append(":\"")//
					.append(request.getHeader(key))//
					.append("\",")//
			;

		}
		return sb.append("}").toString();
	}

	private static String getEntityBody(HttpServletRequest request) {
//        request.getInputStream();
		return "";
	}

}

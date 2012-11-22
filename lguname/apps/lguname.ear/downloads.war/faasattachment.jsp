<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.rameses.service.*" %>
<%@ taglib tagdir="/WEB-INF/tags/server" prefix="s" %>

<s:invoke service="Var" method="get" params="${'faas_attachment_path'}" var="attachment_path"/>
<%   
	try {
		String attachment_path = (String) request.getAttribute("attachment_path");
		String faasid = request.getParameter("faasid");
		String resid = request.getParameter("resid");
		
		File src = new File(attachment_path + "/" + faasid + "/" + resid);
		
		response.addHeader("Cache-Control", "max-age=86400");
		response.addHeader("Cache-Control", "public");
		response.setContentType( application.getMimeType(src.getAbsolutePath()) );
		Writer w = response.getWriter();
		InputStream is = null;
		
		try {
			is = new BufferedInputStream(new FileInputStream(src));
			int i = -1;
			while( (i=is.read()) != -1 ) w.write(i);
		}
		catch(Exception e) {}
		finally {
			if( is != null ) try{ is.close(); }catch(Exception ign){;}
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
%>
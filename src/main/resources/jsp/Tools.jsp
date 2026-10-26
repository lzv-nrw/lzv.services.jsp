<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<header>
	<h1 class="documentFirstHeading">Verwendete Werkzeuge</h1>
	<div class="documentDescription description">Übersicht der
		eingesetzten PDF-Werkzeuge mit Angaben zu ihren Versionen und weiteren
		Informationen.</div>
</header>

<div id="tools-container">
	<p>Werkzeuge werden geladen ...</p>
</div>

<script
	src="${fn:escapeXml(pageContext.request.contextPath)}/js/ToolsInformation.js"></script>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

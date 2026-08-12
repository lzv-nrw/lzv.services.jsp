<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<h1>PDF Upload zur PDF/A-Validierung mit veraPDF</h1>
<div styleclass="verapdf-form validation">
	<form action="/lzv-api/validate/verapdf" method="post"
		enctype="multipart/form-data">
		<label for="file">PDF wählen</label><br /> <input styleclass="file-upload"
			type="file" id="file" name="file" /> <input type="submit"
			value="Abschicken"></input>
	</form>
</div>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

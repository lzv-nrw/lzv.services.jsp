<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<h1>PDF Upload zur PDF-Validierung mit PDFbox</h1>
<div styleclass="pdfbox-form version">
	<form action="/lzv-api/validate/pdfbox" method="post"
		enctype="multipart/form-data">
		<label for="pdffile">PDF wählen</label><br /> <input styleclass="file-upload"
			type="file" name="file" /> <input type="submit" value="Abschicken"></input>
	</form>
</div>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

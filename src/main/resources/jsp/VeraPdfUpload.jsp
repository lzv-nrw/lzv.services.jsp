<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<h1>PDF Upload zur PDF/A-Validierung mit veraPDF</h1>
<div class="verapdf-form validation">
	<form action="/lzv-api/validate/verapdf" method="post"
		enctype="multipart/form-data">
		<label for="file"><h3>PDF wählen</h3></label> <input
			class="file-upload" type="file" id="file" name="file" /><br /> <input
			type="submit" value="Abschicken"></input>
	</form>
</div>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

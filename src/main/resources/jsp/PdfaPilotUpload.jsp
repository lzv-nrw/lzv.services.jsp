<%@ page language="java" contentType="text/html" ; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead() %>

	<h1>PDF Upload zur PDF-Validierung mit dem pdfaPilot</h1>
		<div class="pdfapilot-form validation">
			<form action="/lzv-api/validate/pdfapilot" method="post" enctype="multipart/form-data">
        		<label for="file"><h3>PDF wählen</h3></label><br/>
				<input class="file-upload" type="file" id="file" name="file" />				
				<input type="submit" value="Abschicken"></input>
			</form>
		</div>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot() %>

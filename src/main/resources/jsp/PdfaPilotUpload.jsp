<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead() %>

	<h1>PDF Upload zur Nutzung des lzv-Services veraPDF-Validierung</h1>
		<div class="pdfapilot-form validation">
			<form action="/lzv-api/validate/pdfapilot" method="post" enctype="multipart/form-data">
        		<label for="file"><h3>PDF wählen</h3></label><br/>
				<input class="file-upload" type="file" id="file" name="file" /><br/>				
				<input type="submit" value="Abschicken"></input>
			</form>
		</div>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot() %>

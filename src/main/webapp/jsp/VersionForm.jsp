<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead() %>

	<h1>PDF Upload zur Nutzung des lzv-Services PDFbox-Versionserkennung</h1>
		<div class="pdfbox-form version">
			<form action="/lzv-api/verapdf/pversion" method="post" enctype="multipart/form-data">
        		<label for="pdffile">PDF wählen</label><br/>
				<input class="file-upload" type="file" name="file" />				
				<input type="submit" value="Abschicken"></input>
			</form>
		</div>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot() %>

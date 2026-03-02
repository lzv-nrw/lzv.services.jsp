<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<h1>PDF/A Erstellung</h1>
<div class="pdfapilot-form validation">
	<form action="/lzv-api/convert/pdfapilot" method="post"
		enctype="multipart/form-data">
		<label for="file"><h3>PDF wählen</h3></label><br /> <input
			class="file-upload" type="file" id="file" name="file" /> 
		<select name="flavour" id="flavour">
			<option value="1a">1a</option>
			<option value="1b" selected >1b</option>
			<option value="2a">2a</option>
			<option value="2u">2u</option>
			<option value="2b">2b</option>
			<option value="3a">3a</option>
			<option value="3u">3u</option>
			<option value="3b">3b</option>
		</select> <input type="submit" value="Abschicken"></input>
	</form>
</div>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<header>
	<h1 class="documentFirstHeading">Analyse und Validierung von
		PDF-Dateien mit pdfaPilot</h1>
	<div class="documentDescription description">PDF-Datei auswählen,
		deren Version und vorhandene Metadaten ausgelesen sowie deren
		PDF/A-Standard und Konformitätsstufe ermittelt werden soll.</div>
</header>

<div class="pdfapilot-form version">
	<form action="/lzv-api/validate/pdfapilot" method="post"
		enctype="multipart/form-data">
		<div style="display: flex;">
			<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getPdfUploadSection()%>
			<button type="submit" class="submit-button">abschicken</button>
		</div>
	</form>
</div>

<script>
	const fileInput = document.getElementById('pdffile');
	const filename = document.getElementById('selected-filename');

	fileInput.addEventListener('change', function() {
		filename.textContent = this.files.length ? this.files[0].name
				: 'Keine Datei ausgewählt';
	});
</script>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

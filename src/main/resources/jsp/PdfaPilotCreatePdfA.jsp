<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<header>
	<h1 class="documentFirstHeading">PDF/A-Erzeugung mit pdfaPilot</h1>
	<div class="documentDescription description">
		PDF-Datei auswählen, die in eine PDF/A-Datei umgewandelt werden soll.<br>
		Anschließend den gewünschten PDF/A-Standard und die Konformitätsstufe
		wählen.
	</div>
	<br>
	<div class="documentDescription description">
		Weitergehende Informationen zu den jeweiligen Merkmalen der
		unterschiedlichen PDF/A-Standards sind auf der <a
			data-linktype="internal" href="/lzv-jsp/about">Startseite</a> zu
		finden.
	</div>
</header>
<div class="pdfapilot-form validation">
	<form action="/lzv-api/convert/pdfapilot" method="post"
		enctype="multipart/form-data">
		<div class="upload-section">
			<label class="upload-label">PDF: </label> <label for="pdffile"
				class="upload-button">Datei auswählen</label> <input
				class="file-upload" type="file" id="pdffile" name="file"
				accept=".pdf,application/pdf" /> <span id="selected-filename"
				class="selected-filename">Keine Datei ausgewählt</span> <br />
		</div>
		<div class="flavour-section">
			<label for="flavour">Standard und Konformitätsstufe:</label> <select
				name="flavour" id="flavour">
				<option value="" disabled selected hidden>Bitte
					auswählen...</option>
				<option value="1a">1a</option>
				<option value="1b">1b</option>
				<option value="2a">2a</option>
				<option value="2u">2u</option>
				<option value="2b">2b</option>
				<option value="3a">3a</option>
				<option value="3u">3u</option>
				<option value="3b">3b</option>
				<option value="auto">Automatisch (erster erfolgreicher)</option>
			</select>
			<button type="submit" class="submit-button">Abschicken</button>
		</div>

		</p>
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

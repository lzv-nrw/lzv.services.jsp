<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<header>
	<h1 class="documentFirstHeading">PDF-Metadatenänderung mit PDFbox</h1>
	<div class="documentDescription description">
		Die Werte sechs unterschiedlicher Metadaten einer PDF/A-Datei können
		hier bearbeitet werden.<br>Sofern das entsprechende Metadatenfeld
		noch keinen Wert enthält, kann eine Angabe hinzugefügt werden.
	</div>
</header>

<div class="pdfbox-form version">
	<form action="/lzv-api/editmd/pdfbox" method="post"
		enctype="multipart/form-data">
		<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getPdfUploadSection()%>

		<table>
			<thead>
				<tr>
					<th></th>
					<th>aktueller Wert</th>
					<th>neuer Wert</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="label">Titel</td>
					<td><input type="text" name="title_current" readonly></td>
					<td><input type="text" name="title_new"></td>
				</tr>
				<tr>
					<td class="label">Autor</td>
					<td><input type="text" name="author_current" readonly></td>
					<td><input type="text" name="author_new"></td>
				</tr>
				<tr>
					<td class="label">Betreff</td>
					<td><input type="text" name="subject_current" readonly></td>
					<td><input type="text" name="subject_new"></td>
				</tr>
				<tr>
					<td class="label">Schlagwörter</td>
					<td><input type="text" name="keywords_current" readonly></td>
					<td><input type="text" name="keywords_new"></td>
				</tr>
				<tr>
					<td class="label">PDF erstellt mit</td>
					<td><input type="text" name="creator_current" readonly></td>
					<td><input type="text" name="creator_new"></td>
				</tr>
				<tr>
					<td class="label">PDF erzeugt mit</td>
					<td><input type="text" name="producer_current" readonly></td>
					<td><input type="text" name="producer_new"></td>
				</tr>
			</tbody>
		</table>

		<button type="submit" class="submit-button">abschicken</button>
	</form>
</div>

<script>
const fileInput = document.getElementById('pdffile');
const filename = document.getElementById('selected-filename');

const currentFields = {
	title: document.querySelector('[name="title_current"]'),
	author: document.querySelector('[name="author_current"]'),
	subject: document.querySelector('[name="subject_current"]'),
	keywords: document.querySelector('[name="keywords_current"]'),
	creator: document.querySelector('[name="creator_current"]'),
	producer: document.querySelector('[name="producer_current"]')
};

fileInput.addEventListener('change', async function () {
	const file = this.files[0];

	filename.textContent = file ? file.name : 'keine Datei ausgewählt';

	const formData = new FormData();
	formData.append('file', file);

	try {
		const response = await fetch('/lzv-api/validate/pdfbox', {
			method: 'POST',
			headers: {
			'Accept': 'application/json'
			},
			body: formData
		});

		if (!response.ok) {
			throw new Error(`HTTP-Fehler: ${response.status}`);
		}

		const result = await response.json();
		const info = result.pdfInfo || {};

		currentFields.title.value = info.title || '';
		currentFields.author.value = info.author || '';
		currentFields.subject.value = info.subject || '';
		currentFields.keywords.value = info.keywords || '';
		currentFields.creator.value = info.creator || '';
		currentFields.producer.value = info.producer || '';

	} catch (error) {
		console.error('Fehler beim Auslesen der PDF-Metadaten:', error);
		alert('Fehler beim Auslesen: ' + error.message);
	}
});
</script>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

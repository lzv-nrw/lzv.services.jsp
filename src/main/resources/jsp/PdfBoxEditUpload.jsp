<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<h1>PDF Upload zur PDF-Medadatenbearbeitung mit PDFbox</h1>
<h2>PDF-Metadaten im Info Dictionary und XMP bearbeiten oder hinzufügen.</h2>
<div styleclass="pdfbox-form version">
	<form action="/lzv-api/editmd/pdfbox" method="post"
		enctype="multipart/form-data">
		<label for="pdffile">PDF wählen</label><br /> <input
			styleclass="file-upload" type="file" name="file" />
		<p>
			Metadatenfeld: <select name="field" id="field">
				<option value="Title" selected>Titel</option>
				<option value="Author">Autor</option>
				<option value="Subject">Betreff</option>
				<option value="Keywords">Schlagwörter</option>
				<option value="Creator">Erstellt mit</option>
				<option value="Producer">PDF erzeugt mit</option>
			</select>
		</p>
		<p>
			Neuer Wert: <input type="text" name="value" size="30"> <input
				type="submit" value="Abschicken">
		</p>

	</form>
</div>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

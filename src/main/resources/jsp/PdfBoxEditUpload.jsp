<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>


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

<script
	src="${fn:escapeXml(pageContext.request.contextPath)}/js/PdfBoxMetadata.js"></script>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

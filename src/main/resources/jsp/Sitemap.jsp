<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()%>

<header>
	<h1 class="documentFirstHeading">Übersicht</h1>
	<div class="documentDescription description">
		Eine Übersicht der verfügbaren Inhalte dieser Webseite.<br>Bewegen
		Sie den Mauszeiger über einen Inhalt und lassen Sie ihn dort für einen
		Moment, um eine Beschreibung des Inhalts zu erhalten.
	</div>
</header>

<ul id="sitemap">
	<li>Bearbeiten
		<ul>
			<li><a href="/lzv-jsp/pdfbox/editMd"
				title="Zur Bearbeitung von Metadaten mit PDFbox">PDF-Metadaten
					ändern</a></li>
			<li><a href="/lzv-jsp/pdfapilot/createpdfa"
				title="Zur Erstellung einer PDF/A-Datei inkl. Auswahlmöglichkeit des gewünschten Standards und der Konformitätsstufe mit pdfaPilot">PDF/A
					erzeugen</a></li>
		</ul>
	</li>
	<li>Analyse
		<ul>
			<li><a href="/lzv-jsp/pdfbox/upload"
				title="Zur Analyse der PDF-Datei - Versionsbestimmung, Auslesen vorhandener Metadaten mit PDFBox">PDF-Validierung
					(PDFbox)</a></li>
			<li><a href="/lzv-jsp/verapdf/upload"
				title="Zur Analyse der PDF-Datei zur Validierung der PDF-Datei - Bestimmung des PDF/A-Standards und seiner Konformitätsstufe mit veraPDF">PDF/A-Validierung
					(veraPDF)</a></li>
			<li><a href="/lzv-jsp/pdfapilot/upload"
				title="Zur Analyse der PDF-Datei - Versionsbestimmung, Auslesen vorhandener Metadaten und zur Valdierung der PDF-Datei - Bestimmung des PDF/A-Standards und seiner Konformitätsstufe">PDF-
					und PDF/A-Validierung (pdfaPilot)</a></li>
		</ul>
	</li>
	<li>weitere Infos
		<ul>
		<li><a href="/lzv-jsp/tools"
				title="Übersicht der eingesetzten PDF-Werkzeuge mit Angaben zu ihren Versionen und weiteren Informationen">Werkzeuge</a></li>
			<li><a href="/lzv-jsp/lzvnrw"
				title="Die Landesinitiative Langzeitverfügbarkeit LZV.nrw bietet vielfältige Informationen rund um das Thema Langzeitverfügbarkeit und hat ein umfangreiches LZV-Serviceangebot für die Hochschulen in NRW zusammengestellt">LZV.nrw</a></li>
		</ul>
	</li>
</ul>

<%=de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()%>

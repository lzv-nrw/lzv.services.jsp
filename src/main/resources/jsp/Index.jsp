<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8"%>

<%= new String(de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead()) %>

	<h1>LZV-Services für PDF-Dateien</h1>
	<p>Mit lzv.services.pdf soll ein Webservice-Framework aufgebaut werden, dass unterschiedliche Werkzeuge 
	zusammenführt, die für die Langzeitverfügbarkeit von PDF-Dateien hilfreich sind.</p>
	<p>Über das Webservice-Framework sollen Werkzeuge, die sonst zusammengesucht, einzeln installiert
	 und betrieben werden müssen, an zentraler Stelle ereichbar und nutzbar werden.</p>
	 <h2>Die Dienste umfassen</h2>
	<ul>
	<li>Bestimmung der Version von PDF-Dateien allgemein (nutzt veraPDF <img src="images/pdfbox-favicon.ico" />)</a>
	<li><a href="/lzv-jsp/verapdf/upload">Online-Bestimmung und -Validierung von PDF/A-Dateien mittels Webformular (nutzt veraPDF <img src="images/verapdf-favicon-32x32.png" />)</a>
	<li><a href="https://github.com/lzv-nrw/lzv.services.pdf?tab=readme-ov-file#use-api-calls" target="_blank">RESTful-API zur Bestimmung und -Validierung von PDF/A-Dateien(nutzt veraPDF)</a>
	<li>Erstellen von PDF/A-Datei (geplant mit Callas PDFA-Pilot)</a>
	</ul>

<%= new String(de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot()) %>

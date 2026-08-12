<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=new String(de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead())%>

<h1>LZV-Services für PDF-Dateien</h1>
<p>Mit ValiFY soll ein Webservice-Framework aufgebaut werden, dass
	unterschiedliche Werkzeuge zusammenführt, die für die
	Langzeitverfügbarkeit von PDF-Dateien hilfreich sind.</p>
<p>Über das Webservice-Framework sollen Werkzeuge, die sonst
	zusammengesucht, einzeln installiert und betrieben werden müssen, an
	zentraler Stelle ereichbar und nutzbar werden.</p>
<h2>Die Dienste umfassen</h2>
<ul>
	<li><a href="/lzv-jsp/pdfbox/upload">Bestimmung der Version
			von PDF-Dateien allgemein (nutzt PDFbox &nbsp;<img
			src="images/pdfbox-favicon.ico" />&nbsp;)
	</a></li>
	<li><a href="/lzv-jsp/verapdf/upload">Online-Bestimmung und
			-Validierung von PDF/A-Dateien mittels Webformular (nutzt veraPDF
			&nbsp;<img src="images/verapdf-favicon-32x32.png" />&nbsp;)
	</a></li>
	<li><a
		href="https://github.com/lzv-nrw/lzv.services.pdf?tab=readme-ov-file#use-api-calls"
		target="_blank">RESTful-API zur Bestimmung und -Validierung von
			PDF/A-Dateien (nutzt veraPDF) <svg xmlns="http://www.w3.org/2000/svg"
				viewBox="0 0 512 512"
				style="margin-left: 5px; vertical-align: -0.125em; fill: currentColor; width: 16px;">
				<!--!Font Awesome Free v6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2026 Fonticons, Inc.-->
				<path
					d="M320 0c-17.7 0-32 14.3-32 32s14.3 32 32 32l82.7 0L201.4 265.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L448 109.3l0 82.7c0 17.7 14.3 32 32 32s32-14.3 32-32l0-160c0-17.7-14.3-32-32-32L320 0zM80 32C35.8 32 0 67.8 0 112L0 432c0 44.2 35.8 80 80 80l320 0c44.2 0 80-35.8 80-80l0-112c0-17.7-14.3-32-32-32s-32 14.3-32 32l0 112c0 8.8-7.2 16-16 16L80 448c-8.8 0-16-7.2-16-16l0-320c0-8.8 7.2-16 16-16l112 0c17.7 0 32-14.3 32-32s-14.3-32-32-32L80 32z" /></svg>
	</a></li>
	<li><a href="/lzv-jsp/pdfapilot/createpdfa">Erstellen von
			PDF/A-Dateien (nutzt Callas PDFA-Pilot)</a>
</ul>

<%=new String(de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot())%>

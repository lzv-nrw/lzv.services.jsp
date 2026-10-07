<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%=new String(de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlHead())%>

<div class="lead-image">
	<h1>
		<span style="color: #192d46; font-variant: small-caps;">Vali</span><span
			style="color: #2ba1d5; font-variant: small-caps;">FY</span> <br>Ein
		Service für PDF-Dateien
	</h1>
	<img src="/lzv-jsp/images/valify_logo.png" alt="ValiFY Logo">
</div>

<h2>
	Bestandteile und Funktionsweise von <span
		style="color: #192d46; font-variant: small-caps;">Vali</span><span
		style="color: #2ba1d5; font-variant: small-caps;">FY</span>
</h2>
<p>
	ValiFY ist ein niedrigschwelliges Angebot für die Arbeit mit
	PDF-Dateien im Kontext der Datenerhaltung und Langzeitverfügbarkeit und
	bündelt dafür unterschiedliche <a data-linktype="internal"
		href="/lzv-api/tools">Werkzeuge</a>.
</p>
<p>Konkret kann ValiFY für die Formatidentifikation und -validierung
	von PDF-Dateien, die Erstellung von PDF/A-Dateien sowie der
	Metadatenbearbeitung von PDF-Dateien genutzt werden.</p>
<p>
	Dieser Service richtet sich an die Kooperationspartner von <a
		data-linktype="external" target="_blank" href="https://www.lzv.nrw">LZV.nrw</a>.
	Der zentrale Zugang zu den verschiedenen Tools bietet einen Mehrwert
	gegenüber deren separater Nutzung. Zum Einsatz kommen die folgenden
	Werkzeuge.
</p>

<h3>PDFbox - Open Access-Tool</h3>
<ul>
	<li>zur Analyse der PDF-Datei - Versionsbestimmung, Auslesen
		vorhandener Metadaten
		<ul>
			<li>In ValiFY ist zusätzlich zur Versionsangabe jeweils eine
				Verlinkung zum entsprechenden Eintrag in der <a
				data-linktype="external" target="_blank"
				href="https://www.nationalarchives.gov.uk/pronom/">PRONOM-Datenbank</a>
				eingefügt, um sich direkt weitergehend informieren zu können.
			</li>
			<li>Die durch PDFBox auslesbaren Metadaten werden ausgegeben.</li>
		</ul>
	</li>
	<li>zur Bearbeitung von Metadaten
		<ul>
			<li>Die Inhalte von sechs Metadatenfeldern der jeweils
				ausgewählten Datei können mit neuen Werten überschrieben werden.
				Sind die Felder leer, können neue Angaben hinzugefügt werden.</li>
		</ul>
	</li>
</ul>
<h3>veraPDF - Open Access-Tool</h3>
<ul>
	<li>zur Analyse der PDF-Datei - Versionsbestimmung, Auslesen
		vorhandener Metadaten
		<ul>
			<li>In ValiFY ist zusätzlich zur Versionsangabe jeweils eine
				Verlinkung zum entsprechenden Eintrag in der <a
				data-linktype="external" target="_blank"
				href="https://www.nationalarchives.gov.uk/pronom/">PRONOM-Datenbank</a>
				eingefügt, um sich direkt weitergehend informieren zu können.
			</li>
			<li>Die durch veraPDF auslesbaren Metadaten werden ausgegeben.</li>
		</ul>
	</li>
	<li>zur Validierung der PDF-Datei - Bestimmung des PDF/A-Standards
		und seiner Konformitätsstufe
		<ul>
			<li>Wurde ein PDF/A-Standard identifiziert, ist in ValiFY
				jeweils die Verlinkung zum Eintrag des entsprechenden
				PDF/A-Standards in der <a data-linktype="external" target="_blank"
				href="https://www.nationalarchives.gov.uk/pronom/">PRONOM-Datenbank</a>
				sowie dessen Beschreibung bei <a data-linktype="external"
				target="_blank" href="https://kost-ceco.ch/cms/willkommen.html">KOST</a>
				eingefügt, um sich direkt weitergehend informieren zu können.
			</li>
		</ul>
	</li>
</ul>
<h3>pdfaPilot - lizensiertes Tool</h3>
<ul>
	<li>zur Analyse der PDF-Datei - Versionsbestimmung, Auslesen
		vorhandener Metadaten
		<ul>
			<li>In ValiFY ist zusätzlich zur Versionsangabe jeweils eine
				Verlinkung zum entsprechenden Eintrag in der <a
				data-linktype="external" target="_blank"
				href="https://www.nationalarchives.gov.uk/pronom/">PRONOM-Datenbank</a>
				eingefügt, um sich direkt weitergehend informieren zu können.
			</li>
			<li>Die durch pdfaPilot auslesbaren Metadaten werden ausgegeben.</li>
		</ul>
	</li>
	<li>zur Valdierung der PDF-Datei - Bestimmung des PDF/A-Standards
		und seiner Konformitätsstufe
		<ul>
			<li>Wurde ein PDF/A-Standard identifiziert, ist in ValiFY
				jeweils die Verlinkung zum Eintrag des entsprechenden
				PDF/A-Standards in der <a data-linktype="external" target="_blank"
				href="https://www.nationalarchives.gov.uk/pronom/">PRONOM-Datenbank</a>
				sowie dessen Beschreibung bei <a data-linktype="external"
				target="_blank" href="https://kost-ceco.ch/cms/willkommen.html">KOST</a>
				eingefügt, um sich direkt weitergehend informieren zu können.
			</li>
		</ul>
	</li>
	<li>zur Erstellung einer PDF/A-Datei inkl. Auswahlmöglichkeit des
		gewünschten Standards und der Konformitätsstufe</li>
</ul>

<h2>Die unterschiedlichen PDF/A-Standards und Konformitätsstufen</h2>
<p>PDF/A stellt ein spezifisches PDF-Dateiformat für die
	Langzeitarchivierung bzw. -verfügbarkeit digitaler Dokumente dar. Dabei
	wird nach verschiedenen Standards unterschieden, aktuell PDF/A-1,
	PDF/A-2, PDF/A-3 und PDF/A-4. Jeder Standard ist für spezifische
	Anwendungsfälle bzw. Dokumentenarten geeignet. Je nach Standard stehen
	verschiedene Ausprägungen, sogenannte Konformitätsstufen oder Level zur
	Verfügung, die die jeweiligen Eigenschaften weiter untergliedern.
	Dezidierte Informationen dazu finden sich auf den im Folgenden
	aufgeführten Seiten:</p>
<ul>
	<li><a data-linktype="external" target="_blank"
		href="https://de.wikipedia.org/wiki/PDF/A" target="_blank">https://de.wikipedia.org/wiki/PDF/A</a></li>
	<li><a data-linktype="external" target="_blank"
		href="https://www.adobe.com/de/acrobat/resources/document-files/pdf-types/pdf-a.html">https://www.adobe.com/de/acrobat/resources/document-files/pdf-types/pdf-a.html</a></li>
	<li><a data-linktype="external" target="_blank"
		href="https://blog.visual-paradigm.com/de/what-are-the-different-conformance-levels-of-pdf-a/">https://blog.visual-paradigm.com/de/what-are-the-different-conformance-levels-of-pdf-a/</a></li>
	<li><a data-linktype="external" target="_blank"
		href="https://kost-ceco.ch/cms/pdf-a-1.html">https://kost-ceco.ch/cms/pdf-a-1.html</a></li>
	<li><a data-linktype="external" target="_blank"
		href="https://kost-ceco.ch/cms/pdf-a-2.html">https://kost-ceco.ch/cms/pdf-a-2.html</a></li>
	<li><a data-linktype="external" target="_blank"
		href="https://kost-ceco.ch/cms/pdf-a-3.html">https://kost-ceco.ch/cms/pdf-a-3.html</a></li>
	<li><a data-linktype="external" target="_blank"
		href="https://pdfa.org/pdfa-faq/">https://pdfa.org/pdfa-faq/</a></li>
	<li><a data-linktype="external" target="_blank"
		href="https://pdfa.org/archival-pdf/">https://pdfa.org/archival-pdf/</a></li>
</ul>


<%=new String(de.nrw.hbz.lzv.services.template.HtmlTemplate.getHtmlFoot())%>

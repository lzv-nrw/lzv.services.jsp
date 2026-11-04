/**
 * 
 */
package de.nrw.hbz.lzv.services.template;

import java.util.Enumeration;
import java.util.Hashtable;

import de.nrw.hbz.lzv.services.model.MenuTemplate;

/**
 * 
 */
public class HtmlTemplate {

	private static Hashtable<String, String> menu = new Hashtable<>();
	// private static Hashtable<String, MenuTemplate> templates = new Hashtable<>();
	// private static MenuTemplate vera =
	// MenuTemplate.initTemplate(MenuTemplate.VERAPDF);

	/**
	 * @return a HTML-Document Head
	 */
	public static String getHtmlHead() {
		MenuTemplate.initTemplate(MenuTemplate.VERAPDF);
		StringBuffer headSb = new StringBuffer();
		headSb.append(
				"<html>\n" + "<head>\n" + "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
						+ "<link rel=\"stylesheet\" href=\"/lzv-jsp/css/default.css\" />\n"
						+ "<link rel=\"stylesheet\" href=\"/lzv-jsp/fontawesome/css/all.min.css\">"
						+ "<link rel=\"icon\" type=\"image/x-icon\" href=\"/lzv-jsp/images/favicon.png\">"
						+ "<title>LZV.nrw - ValiFY</title>\n" + "</head>\n<body>\n");
		headSb.append("<div class=\"head\">");

		headSb.append(getDefaultMenu());

		// headSb.append(getMenuEntry());

		headSb.append("</div></div><div class=\"main\">");

		return headSb.toString();
	}

	/**
	 * @return a HTML-Document Foot
	 */
	public static String getHtmlFoot() {
		StringBuffer footSb = new StringBuffer();
		footSb.append("</div> <footer id=\"footer-wrapper\">");
		footSb.append("<div class=\"container\" id=\"footer\">");
		footSb.append("<div class=\"logos row\">");
		footSb.append("<div>");
		footSb.append(
				"<p><a data-linktype=\"external\" data-val=\"https://www.lzv.nrw\" href=\"https://www.lzv.nrw\" rel=\"noopener\" target=\"_blank\" title=\"Landesinitiative Langzeitverfügbarkeit - LZV.nrw\">");
		footSb.append(
				"<img alt=\"Landesinitiative Langzeitverfügbarkeit - LZV.nrw\" src=\"/lzv-jsp/images/lzv-nrw-logo-claim.png\" title=\"Landesinitiative Langzeitverfügbarkeit - LZV.nrw\"></a></p>");
		footSb.append("</div>");
		footSb.append("<div>");
		footSb.append(
				"<p><a data-linktype=\"external\" data-val=\"https://www.hbz-nrw.de/de\" href=\"https://www.hbz-nrw.de/de\" rel=\"noopener\" target=\"_blank\" title=\"Hochschulbibliothekszentrum des Landes NRW\">");
		footSb.append(
				"<img alt=\"Logo hbz\" src=\"/lzv-jsp/images/hbz-logo.png\" title=\"Hochschulbibliothekszentrum des Landes NRW\"></a></p>");
		footSb.append("</div>");
		footSb.append("</div>");
		footSb.append("<div class=\"site-actions row\">");
		footSb.append("<div><ul class=\"actions-site_actions\">");
		footSb.append(
				"<li class=\"portletItem\"><a href=\"/lzv-jsp/sitemap\" title=\"Übersicht\"> <span>Übersicht</span></a></li>");
		footSb.append(
				"<li class=\"portletItem\"><a href=\"/lzv-jsp/erklaerung-zur-barrierefreiheit\" title=\"Barrierefreiheit\"> <span>Barrierefreiheit</span></a></li>");
		footSb.append(
				"<li class=\"portletItem\"><a href=\"https://www.lzv.nrw/ueber-uns/team\" title=\"LZV-Service-Team\"> <span>Kontakt</span></a></li>");
		footSb.append(
				"<li class=\"portletItem\"><a href=\"http://www.hbz-nrw.de/de/impressum\" title=\"Impressum\"> <span>Impressum</span></a></li>");
		footSb.append(
				"<li class=\"portletItem\"><a href=\"http://www.hbz-nrw.de/de/datenschutz\" title=\"Datenschutz\"> <span>Datenschutz</span></a></li>");
		footSb.append(
				"<li class=\"portletItem\"><a href=\"https://status.hbz-nrw.net/\" title=\"Betriebsstatus\"> <span>Betriebsstatus</span></a></li>");
		footSb.append("</ul></div></div></div>");
		footSb.append("</footer>");
		footSb.append("</body>\n</html>");

		return footSb.toString();
	}

	/**
	 * Method has to be implemented from MenuTemplate of each Plugin in order to
	 * provide the appropriate Menu Entry for the Plugin
	 *
	 * @param menuKey  Menu Name
	 * @param menuCode html code returned from Plugin MenuTemplate
	 */
	public static void appendMenu(String menuKey, String menuCode) {
		menu.put(menuKey, menuCode);
	}

	private static String getMenuEntry() {
		StringBuffer menuSb = new StringBuffer();
		Enumeration<String> mEnum = menu.keys();
		while (mEnum.hasMoreElements()) {
			String key = mEnum.nextElement();
			menuSb.append(menu.get(key));
		}
		return menuSb.toString();
	}

	private static String getDefaultMenu() {
		StringBuffer defMenu = new StringBuffer();

		// Home/Logo
		defMenu.append("<a id='portal-logo' title='valify' href='/lzv-jsp/about'>");
		defMenu.append("<img src='/lzv-jsp/images/valify_bildmarke.png' alt='ValiFY' title='ValiFY'></a>");

		// File
		/*
		 * defMenu.append("<div class='dropdown'>");
		 * defMenu.append("<div class='menu todo'>Datei");
		 * defMenu.append("<div class='submenu'>" + "<ul>");
		 * defMenu.append("<li><a href='/lzv-jsp/upload'>PDF-Datei hochladen</a></li>");
		 * defMenu.append("<li><a href='/lzv-jsp/save'>PDF-Datei herunterladen</a></li>"
		 * ); defMenu.append("</ul></div></div>"); defMenu.append("</div>");
		 */

		defMenu.append("<div class='navigation'>");

		// Edit
		defMenu.append("<div class='dropdown'>");
		defMenu.append("<div class='menu'><button type=\"button\" class=\"menu-trigger\">Bearbeiten");
		defMenu.append("<i class='fa-solid fa-chevron-down'></i></button>");
		defMenu.append("<div class='submenu'>" + "<ul>");
		defMenu.append("<li><a href='/lzv-jsp/pdfbox/editMd'>PDF-Metadatenänderung</a></li>");
		defMenu.append("<li><a href='/lzv-jsp/pdfapilot/createpdfa'>PDF/A-Erzeugung</a></li>");
		defMenu.append("</ul></div></div>");
		defMenu.append("</div>");

		// Analysis
		defMenu.append("<div class='dropdown'>");
		defMenu.append("<div class='menu'><button type=\"button\" class=\"menu-trigger\">Analyse");
		defMenu.append("<i class='fa-solid fa-chevron-down'></i></button>");
		defMenu.append("<div class='submenu'>" + "<ul>");
		defMenu.append("<li><a href='/lzv-jsp/pdfbox/upload'>PDF-Analyse (PDFbox)</a></li>");
		defMenu.append("<li><a href='/lzv-jsp/verapdf/upload'>PDF-Analyse und -Validierung (veraPDF)</a></li>");
		defMenu.append("<li><a href='/lzv-jsp/pdfapilot/upload'>PDF-Analyse und -Validierung (pdfaPilot)</a></li>");
		defMenu.append("</ul></div></div>");
		defMenu.append("</div>");

		// More informationen
		defMenu.append("<div class='dropdown'>");
		defMenu.append("<div class='menu'><button type=\"button\" class=\"menu-trigger\">weitere Infos");
		defMenu.append("<i class='fa-solid fa-chevron-down'></i></button>");
		defMenu.append("<div class='submenu'>" + "<ul>");
		defMenu.append("<li><a href='/lzv-jsp/tools'>Werkzeuge</a></li>");
		defMenu.append("<li><a href='/lzv-jsp/lzvnrw'>LZV.nrw</a></li>");
		defMenu.append("</ul></div></div>");
		defMenu.append("</div>");

		defMenu.append("</div>");

		// Logo lzv.nrw
		defMenu.append(
				"<a id='portal-logo-lzv' title='Landesinitiative Langzeitverfügbarkeit - LZV.nrw' href='https://www.lzv.nrw/' target='_blank'>");
		defMenu.append(
				"<img src='/lzv-jsp/images/lzv-nrw-logo.png' alt='Landesinitiative Langzeitverfügbarkeit - LZV.nrw' title='Landesinitiative Langzeitverfügbarkeit - LZV.nrw'></a>");

		return defMenu.toString();
	}

	/**
	 * @return a HTML-Document PDF upload section
	 */
	public static String getPdfUploadSection() {
		StringBuffer pdfUploadSection = new StringBuffer();

		pdfUploadSection.append("<div class='upload-section'>");
		pdfUploadSection.append("<label class='upload-label'>PDF:</label>");
		pdfUploadSection.append(
				"<label for='pdffile' class='upload-button' title='Test für Screenreader'>Datei auswählen</label>");
		pdfUploadSection.append(
				"<input class='file-upload' type='file' id='pdffile' name='file' accept='.pdf,application/pdf' required/>");
		pdfUploadSection.append("<span id='selected-filename' class='selected-filename'>keine Datei ausgewählt</span>");
		pdfUploadSection.append("</div>");

		return pdfUploadSection.toString();
	}
}

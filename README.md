[![Codacy Badge](https://app.codacy.com/project/badge/Grade/fee8903013d14e1a8fc9b148c180a196)](https://app.codacy.com/gh/lzv-nrw/lzv.services.jsp/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)

# LZV Services Frontend #

## About the lzv.services.jsp ##

The LZV Services are WEB-API based services for validating and file migration tasks

They currently make use of veraPDF to check if a PDF file is compliant to any PDF/A flavour. 
Integration of Callas PDF/A-Pilot is on the roadmap as the Callas Tool also provide PDF/A generation.
    
API for veraPDF encloses:

- about: lists services available (GET, html)

- version: returns version of veraPDF libraries in use (GET, html, json)

- upload: form for uploading PDF to validate

- validate: service for veraPDF validation (POST, html)

## License ##

lzv.services.jsp is licensed under [GNU Lesser General public License](LICENSE)

veraPDF is licensed under [GNU General public license GPLv3+](https://docs.verapdf.org/develop/LICENSE.GPL)

## Prerequisites ##

- Deployment of lzv.services.pdf within the same Servlet Container where you deploy lzv.services.jsp

## Installation ##

Server installation (requires running Tomcat 10) 
- Clone Repository with `git clone https://github.com/lzv-nrw/lzv.services.lzv.git`
- change into local directory `cd lzv.services.jsp`
- run `mvn clean test war:war`

If all tests successfully passed you will find file `lzv-jsp.war` in newly created directory `target`

- copy file into webapps directory in your Tomcat Servlet Container

## Usage ##

With your favorite Browser navigate to `http://{DOMAIN-NAME}:8080/lzv-jsp/about`

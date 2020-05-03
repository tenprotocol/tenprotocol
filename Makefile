.SUFFIXES: .xml .txt .html

all: draft-yates-threat-exposure-notification-protocol-00.txt

.xml.txt:
	xml2rfc --prep --text --html $*.xml

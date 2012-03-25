VERSION=0.1.0
PACKAGE_NAME=standalone_webdav

all: dist

dist:
	mkdir ${PACKAGE_NAME}
	cp httpd httpd.conf ${PACKAGE_NAME}/
	tar czvf ${PACKAGE_NAME}-${VERSION}.tar.gz ${PACKAGE_NAME}
	rm -rf ${PACKAGE_NAME}

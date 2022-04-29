IMAGE_NAME := mkcert-tool

build:
	docker build -t $(IMAGE_NAME):latest .

cert:
	docker run -it --rm -v /home/user/mkcert-tool/Cert:/Cert $(IMAGE_NAME):latest /bin/bash -c "mkcert localhost"
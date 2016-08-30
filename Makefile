all: build

build:
	cd docker && docker build -t phaser .

run: build
	docker run -it --rm \
		--volume $(PWD)/current:/usr/share/nginx/html:ro \
		--publish 8080:80 \
		phaser

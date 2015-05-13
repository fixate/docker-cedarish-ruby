all: build

.PHONY: all build push

build:
	docker build -t fixate/rbenv:0.0.1 .

push:
	docker push fixate/rbenv

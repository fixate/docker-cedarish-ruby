VERSION=0.0.4
all: build

.PHONY: all build push

build:
	docker build -t fixate/cedarish-ruby:${VERSION} .

push:
	docker push fixate/cedarish-ruby:${VERSION}

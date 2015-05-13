all: build

.PHONY: all build push

build:
	docker build -t fixate/cedarish-ruby:0.0.1 .

push:
	docker push fixate/cedarish-ruby

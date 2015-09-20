all: build

.PHONY: all build push

build:
	docker build -t fixate/cedarish-ruby:0.0.3 .

push:
	docker push fixate/cedarish-ruby

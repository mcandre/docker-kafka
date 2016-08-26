IMAGE=mcandre/docker-kafka:latest

export LOCALHOST=$$(docker-machine ip default)

ifneq ($(OS),Windows_NT)
	UNAME=$(shell uname -s)

	ifeq ($(UNAME),Linux)
		LOCALHOST=localhost
	endif
endif

all: run

build: Dockerfile
	docker build -t $(IMAGE) .

run: clean-containers
	docker-compose rm -f && docker-compose up

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-layers:
	-docker images | grep -v IMAGE | grep none | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images clean-layers

editorconfig:
	find . -type f -name Thumbs.db -prune -o -type f -name .DS_Store -prune -o -type d -name .git -prune -o -type d -name .svn -prune -o -type d -name tmp -prune -o -type d -name bin -prune -o -type d -name target -prune -o -name "*.app*" -prune -o -type d -name node_modules -prune -o -type d -name bower_components -prune -o -type f -name "*[-.]min.js" -prune -o -type d -name "*.dSYM" -prune -o -type f -name "*.scpt" -prune -o -type d -name "*.xcodeproj" -prune -o -type d -name .vagrant -prune -o -type f -name .exe -prune -o -type f -name "*.o" -prune -o -type f -name "*.pyc" -prune -o -type f -name "*.hi" -prune -o -type f -name "*.beam" -prune -o -type f -name "*.png" -prune -o -type f -name "*.gif" -prune -o -type f -name "*.jp*g" -prune -o -type f -name "*.ico" -prune -o -type f -name "*.ttf" -prune -o -type f -name "*.zip" -prune -o -type f -name "*.jar" -prune -o -type f -name "*.dot" -prune -o -type f -name "*.pdf" -prune -o -type f -name "*.wav" -prune -o -type f -name "*.mp[34]" -prune -o -type f -name "*.svg" -prune -o -type f -name "*.flip" -prune -o -type f -name "*.class" -prune -o -type f -name "*.jad" -prune -o -type d -name .idea -prune -o -type f -name "*.iml" -prune -o -type f -name "*.log" -prune -o -type f -name "*" -exec node_modules/.bin/editorconfig-tools check {} \;

dockerlint:
	$(shell npm bin)/dockerlint

lint: editorconfig dockerlint

publish:
	docker push $(IMAGE)

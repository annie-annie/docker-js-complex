build-client:
	cd ./client && \
	yarn install && \
	docker build -f ./Dockerfile.dev -t djsc_client .

run-client:
	docker run -it -p 3001:3000 djsc_client

build-server:
	cd ./server && \
	yarn install && \
	docker build -f ./Dockerfile.dev -t djsc_server .

run-server:
	docker run -it -p 3002:3000 djsc_server

build-worker:
	cd ./worker && \
	yarn install && \
	docker build -f ./Dockerfile.dev -t djsc_worker .

run-worker:
	docker run -it -p 3003:3000 djsc_worker
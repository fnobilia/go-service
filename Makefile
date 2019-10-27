# You have to define the values in {}
APP_NAME=go-service

# DOCKER TASKS
# Build the container
docker-build: ## Build the container
	docker build -t $(APP_NAME) .

docker-run: ## Run container
	docker run -p=8080:80 --name="$(APP_NAME)" $(APP_NAME)

docker-stop: ## Stop and remove a running container
	docker stop $(APP_NAME); docker rm $(APP_NAME)

docker-up: docker-build docker-run ## Build and run container
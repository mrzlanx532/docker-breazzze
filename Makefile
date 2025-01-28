include .env

start:
	docker compose -f docker-compose.$(APP_ENVIRONMENT).yml up -d --build
stop:
	docker compose -f docker-compose.$(APP_ENVIRONMENT).yml down
env:
	sh create_env.sh
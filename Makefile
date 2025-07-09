COMPOSE = docker compose -f docker-compose.yml

all:
	$(COMPOSE) up --build

clean:
	$(COMPOSE) down

fclean: clean
	docker system prune -af

re: fclean all

.PHONY: all clean fclean re
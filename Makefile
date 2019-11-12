setup:
	mkdir -p ./ssh-keys
	yes y | ssh-keygen -t ed25519 -N "" -C "" -f ./ssh-keys/dummy-key > /dev/null

up:
	docker-compose up

down:
	docker-compose down

ash:
	docker-compose exec sftp ash

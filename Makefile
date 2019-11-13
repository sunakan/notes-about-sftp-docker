# cp -n は上書きしない
setup:
	cp -n env.sample .env
	mkdir -p ./ssh-keys
	yes y | ssh-keygen -t ed25519 -N "" -C "" -f ./ssh-keys/dummy-key > /dev/null

up:
	docker-compose up

down:
	docker-compose down

sftp:
	sftp -i ssh-keys/dummy-key -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oPort=2222 vagrant@0.0.0.0

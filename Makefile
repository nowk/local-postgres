
postgres\:16:
	/usr/bin/docker run --rm \
	  --name postgres-16 \
	  -p 0.0.0.0:5432:5432 \
	  -e POSTGRES_PASSWORD=astrongpassword \
	  -v $(PWD)/var/lib/postgresql/16/data:/var/lib/postgresql/data \
	  postgres:16.9

.PHONY: postgres\:16

postgres\:9:
	/usr/bin/docker run --rm \
	  --name postgres-9 \
	  -p 0.0.0.0:54321:5432 \
	  -e POSTGRES_PASSWORD=astrongpassword \
	  -v $(PWD)/var/lib/postgresql/9/data:/var/lib/postgresql/data \
	  postgres:9.6

.PHONY: postgres\:9

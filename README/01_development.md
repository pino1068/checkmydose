# Scaffolding

create SvelteKit project

    $ mkdir webapp
    $ docker run --rm -it -v $(pwd)/webapp:/app -w /app node:20.3.1-bullseye-slim sh -c "npm create svelte@latest app"

create webapp/Dockerfile
create /docker-compose.yml

# Run local development

    $ docker compose up

note: on every start is installing/updating the node_modules, so the very first it takes some time

navigate to http://localhost:5173/

# NOTE using Debian instead of Alpine because Playwright support # see https://playwright.dev/docs/troubleshooting#linux
FROM node:20.3.1-bullseye-slim as base
RUN npm install -g npm@9.8.0
WORKDIR /app


# 1770 MB
FROM base as dev
RUN npx playwright install --with-deps
    # TODO install xvfb to then xvfb-run for playwright { headless: false } ??
VOLUME /app
EXPOSE 5173
CMD npm install --no-fund && npm run dev -- --host


# 396 MB
FROM base as prod
COPY app/ .
RUN npm clean-install && npm run build
EXPOSE 3000
CMD node build


# TODO multistage and copy over the /build directory only ??

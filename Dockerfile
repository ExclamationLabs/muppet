FROM wiremock/wiremock:2.35.0 AS build
COPY __files/* /home/wiremock/__files/*
COPY mappings/* /home/wiremock/mappings/*


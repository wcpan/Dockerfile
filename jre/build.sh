#!/bin/sh
docker build --platform amd64 -t wcpan/jre:17 . 
docker build --platform arm64 -t wcpan/jre:17-arm . 

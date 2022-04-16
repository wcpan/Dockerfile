docker build --platform amd64 -t wcpan/ubuntu .
docker build --platform arm64 -t wcpan/ubuntu:arm64 .
docker push wcpan/ubuntu
docker push wcpan/ubuntu:arm64

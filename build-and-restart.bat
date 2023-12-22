docker build . -t ogloszex
docker stop ogloszex || true
docker rm ogloszex || true
docker run -d -p 8080:8080 --name=ogloszex -e SPRING_PROFILES_ACTIVE=dev --network ogloszex-network --restart unless-stopped ogloszex
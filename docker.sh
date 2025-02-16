#!/sh/bash
docker run -d --gpus=all -v /home/binzou/deepseek/ollama:/root/.ollama -e OLLAMA_HOST="0.0.0.0" -e OLLAMA_ORIGINS="http://0.0.0.0:11434" -p 11434:11434 --name ollama ollama/ollama
docker run -d -p 3000:8080 -e OLLAMA_BASE_URL=172.17.0.2 -v /home/binzou/deepseek/web-ui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main

docker exec -it ollama ollama run deepseek-r1


docker network create --driver overlay my_overlay_network

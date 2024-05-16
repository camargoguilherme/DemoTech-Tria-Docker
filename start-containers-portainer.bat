REM Executa docker compose up para o portainer

call docker-compose --compatibility -p "portainer" -f docker-compose.portainer.yml up -d portainer

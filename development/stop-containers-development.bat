REM Executa docker compose stop para development

call docker-compose --compatibility -f docker-compose.yml rabbit-mq pgadmin4 cloudbeaver sonarqube

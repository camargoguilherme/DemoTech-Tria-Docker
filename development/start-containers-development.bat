REM Executa docker compose up para development

call docker-compose --compatibility -p "development" -f docker-compose.yml up -d rabbit-mq pgadmin4 cloudbeaver sonarqube 

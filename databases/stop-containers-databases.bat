REM Executa docker compose stop para databases

call docker-compose --compatibility -f docker-compose.yml stop sqlserver postgres mysql

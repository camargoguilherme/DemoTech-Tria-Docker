REM Executa docker compose up para databases

call docker-compose --compatibility -p "databases" -f docker-compose.yml up -d sqlserver postgres mysql

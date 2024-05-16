REM Configura o RabbitMQ

@echo off

rem Variáveis
set RABBITMQ_CONTAINER=rabbit-mq
set RABBITMQ_USER=admin
set RABBITMQ_PASSWORD=senha@12345#
set VHOSTS=("/", "crawler-bot", "whatsapp-bot", "master-scheduler")

call docker exec -it %RABBITMQ_CONTAINER% rabbitmq-plugins enable rabbitmq_management

call docker exec -it %RABBITMQ_CONTAINER% rabbitmqctl add_user %RABBITMQ_USER% %RABBITMQ_PASSWORD%
call docker exec -it %RABBITMQ_CONTAINER% rabbitmqctl set_user_tags %RABBITMQ_USER% administrator

rem Configuração do vhost e permissões
for %%v in (%VHOSTS%) do (
  call docker exec -it %RABBITMQ_CONTAINER% rabbitmqctl add_vhost %%v
  call docker exec -it %RABBITMQ_CONTAINER% rabbitmqctl set_permissions -p %%v %RABBITMQ_USER% ".*" ".*" ".*"
)

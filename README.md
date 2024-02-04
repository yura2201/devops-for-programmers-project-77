# hexlet-terraform
Демонстрация возможностей [Terraform](https://www.terraform.io/) в реализации концепции "**Инфраструктура как код**"/"**Infrastructure as code**"(IaC)

В проекте используется инфраструктура [Yandex Cloud](https://cloud.yandex.com/)

[Документация](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs)

[Зеркало документации](https://terraform-provider.yandexcloud.net/) в Yandex Cloud

[User Guide по Terraform](https://cloud.yandex.ru/ru/docs/tutorials/infrastructure-management/terraform-quickstart#linux-macos_1) в Yandex Cloud
## Подготовка
### Создать зеркало для провайдера
Создать файл конфигурации

`nano ~/.terraformrc`

Добавить блок:

```
provider_installation {
    network_mirror {
        url = "https://terraform-mirror.yandexcloud.net/"
        include = ["registry.terraform.io/*/*"]
    }
    direct {
        exclude = ["registry.terraform.io/*/*"]
    }
}
```

### Секреты
#### Необходимо добавить файл `secrets.backend.tfvars` и указать значения для переменных
`bucket` - имя бакета в инфраструктуре Yandex Cloud. <br>
`access_key` - идентификатор статического ключа доступа к сервисному аккаунту в Yandex Cloud. <br>
`secret_key` - токен статического секретного ключа доступа к сервисному аккаунту в Yandex Cloud. <br>
`dynamodb_table` - имя таблицы для фиксирования блокировок состояния. <br>
`dynamodb_endpoint` - URL к апи для работы с таблицей.

#### Необходимо добавить файл `secrets.auto.tfvars` и указать значения для переменных
`token` - токен для доступа к облачной инфраструктуре. <br>
получить токен: `yc iam create-token` <br>
`cloud_id` - идентификатор облака Yandex. <br>
`folder_id` - идентификатор каталога в облаке. <br>
`yc_user` - имя пользователя, используемое в операциях. <br>
`db_name` - название БД. <br>
`db_user` - имя пользователя БД <br>
`db_password` - пароль пользователя БД <br>
`https_cert_id` - идентификатор сертификата в Certificate Manager для поддержки https. 

### Команды make. Выполняются в корне проекта.
`tr-init` - инициализация terraform <br>
`tr-format` - форматирование файлов проекта <br>
`tr-validate` - проверка корректности кода проекта <br>
`tr-plan` - построение плана выполнения заданий terraform <br>
`tr-apply` - запуск выполнения заданий terraform по созданию инфраструктуры <br>
`tr-destroy` - удаление ранее созданной инфраструктуры <br>
`app-setup` - предварительная настройка приложения: <br>
- установка ролей и коллекций Ansible (если выполнялось ранее, то пропустим без ошибок)
- установка Docker и docker-compose на удаленные сервера, добавление пользователей `docker_group_users` в группу `docker` (если на удаленном сервере они не установлены)
- установка необходимых пакетов python на удаленные сервера
- добавление пользователя `ansible_ssh_user` в группу `sudo`
- установка postrges клиента <br>

`app-deploy` - деплой приложения на удаленные машины

### Приложение
http://yurait6.ru/

[Документация Redmine](https://www.redmine.org/guide)

[Docker](https://hub.docker.com/_/redmine)

### Hexlet tests and linter status:
[![Actions Status](https://github.com/yura2201/devops-for-programmers-project-77/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/yura2201/devops-for-programmers-project-77/actions)
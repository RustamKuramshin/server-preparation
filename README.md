## Пример проекта подготовки сервера разработки с CD и сервера мониторинга


##### (Данные о адресах серверов, именах сервисов и учетных данных умышленно искажены)

##### ВАЖНО:
В репозитории используются git submodule!
Хэлп по сабмодулям смотреть [здесь](https://git-scm.com/book/ru/v2/%D0%98%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B-Git-%D0%9F%D0%BE%D0%B4%D0%BC%D0%BE%D0%B4%D1%83%D0%BB%D0%B8). \
Клонирование:
```shell script
git clone --recursive ssh://yourproject.git
```
Инициализация и обновление проекта с сабмодулями:
```shell script
git submodule init
git submodule update
```

### Описание
Для запуска playbooks использовать контейнер, собранный в ```./ansible-docker``` \
Сборка и проверка версии Ansible:
```shell script
cd ansible-docker
docker build -t ansible-playbook . && docker run -v $(pwd):/ansible/playbooks --name ansible-playbook --rm ansible-playbook --version
```

### Запуск playbooks
Перейти в каталог с плейбуком и запустить плейбук через контейнер с ansible, указав файл инвентаря и файл с переменными (если используются):
```shell script
cd online2/
docker run --rm -it -v $(pwd):/ansible/playbooks ansible-playbook -i [path to inventory yml-file] [path to playbook yml-file] --extra-vars "@[path to vars yml-file]"
```

### Выполнение любых команд ansible-playbook:
```shell script
docker run --rm -it -v $(pwd):/ansible/playbooks ansible-playbook [comand line arguments]
```

# sw-runes
python vers�o 3.6
bd: mysql

# Necess�rio para rodar local
* Fazer uma c�pia do arquivo example.settings.py e renomear para settings.py
* Criar um virtualenv com ( virtualenv env_swrunes )
* Ativar o virtualenv
* Instalar o requirements.txt ( pip install -r requirements.txt )
* Rodar ( python manage.py runserver )

# Observa��es
* Caso haja problema na instala��o do mysqlclient com o Windows, na pasta "swrunes" do projeto h� um arquivo "mysqlclient-1.3.13-cp36-cp36m-win32.whl", rodar o comando ( pip install mysqlclient-1.3.13-cp36-cp36m-win32.whl )
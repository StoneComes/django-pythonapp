FROM python:test
WORKDIR /var/django-pythonapp
COPY ./ /var/django-pythonapp/
RUN pipreqs --debug ./
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple -r ./requirements.txt
CMD ["gunicorn" , "-w 4" , "-b 0.0.0.0:8000" , "--chdir ./mysite" , "mysite:application"]

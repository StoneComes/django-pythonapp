FROM swr.cn-north-4.myhuaweicloud.com/hwstaff_pub_servicestagew3/python:test
WORKDIR /var/django-pythonapp
COPY ./ /var/django-pythonapp/
RUN pipreqs --debug ./
RUN pip3 install  -r ./requirements.txt
CMD ["gunicorn" , "-w 4" , "-b 0.0.0.0:8000" , "--chdir ./mysite" , "mysite:application"]

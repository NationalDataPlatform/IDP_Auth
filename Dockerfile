FROM chub.cloud.gov.in/mit6c0-ogd/auth_base:nic_server
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY OPub_Auth/ /code/
RUN pip install psycopg2-binary
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
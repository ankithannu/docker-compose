ARG PYTHON_VERSION
FROM python:$PYTHON_VERSION
WORKDIR /usr/src/app
COPY requirement.txt ./
RUN pip install --no-cache-dir -r requirement.txt
COPY . .
ENV FLASK_APP=app.py
CMD flask run --host=0.0.0.0

FROM python

RUN mkdir -p /pyhton-app

WORKDIR /python-app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 9595

CMD [ "python3", "./index.py"]



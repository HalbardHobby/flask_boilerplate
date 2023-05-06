FROM python

WORKDIR /usr/src

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=/usr/src
ENV FLASK_ENV=development

COPY ./src .

CMD ["flask", "run", "--debug", "--host=0.0.0.0"]
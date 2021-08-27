FROM python

ADD requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

ADD data ./data
ADD create_tables.py .
ADD etl.py .
ADD sql_queries.py .
ADD run_etl.sh .

RUN chmod +x run_etl.sh

CMD ./run_etl.sh

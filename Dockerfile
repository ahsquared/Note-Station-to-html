FROM python:3.5-slim
RUN apt-get update && apt-get install pandoc -y
COPY . /nsx2
WORKDIR nsx2
ENTRYPOINT [ "python", "./nsx2html.py" ]

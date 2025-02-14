FROM ubuntu

WORKDIR /app

RUN apt-get update 
RUN apt-get install -y python3

COPY footer.html ./footer.html
COPY header.html ./header.html
COPY index.html ./index.html
COPY intro.html ./intro.html
COPY styles.css ./styles.css
COPY README.md ./README.md

EXPOSE 8080

CMD ["python3", "-m", "http.server", "8080"]
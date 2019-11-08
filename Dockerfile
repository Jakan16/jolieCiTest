FROM jolielang/jolie
EXPOSE 8000
COPY test.ol main.ol
CMD jolie main.ol

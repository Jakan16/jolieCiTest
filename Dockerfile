FROM jolielang/jolie
EXPOSE 8000
COPY . /
CMD jolie test.ol

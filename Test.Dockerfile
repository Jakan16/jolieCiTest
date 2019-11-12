FROM jolielang/jolie
EXPOSE 8000
COPY test test
COPY interfaces interfaces
CMD jolie test/test.ol

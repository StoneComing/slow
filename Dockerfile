FROM as-java:8

WORKDIR /home/apps/
ADD target/slow-1.0.0.jar .
ADD target/lib ./lib
ADD start.sh .

ENTRYPOINT ["sh", "/home/apps/start.sh"]

FROM java:8
MAINTAINER Mamta Bharti "mamta.bharti9039@gmail.com"

EXPOSE 9080

ADD target/books-example-1.0-SNAPSHOT.jar /application.jar

CMD java -jar /application.jar

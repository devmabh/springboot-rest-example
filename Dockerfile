FROM java:8
MAINTAINER Mamta Bharti "mamta.bharti9039@gmail.com"
WORKDIR /usr/src/app
EXPOSE 9080
copy . .
CMD java -jar /usr/scr/app/target/books-example-1.0-SNAPSHOT.jar

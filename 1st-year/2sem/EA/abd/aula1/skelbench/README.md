# Skeleton Benchmark

This is a minimal skeleton benchmark for use in labs in
a database systems course at the U. Minho.

## Workload

Edit Workload.java and add your workload.

## Usage with an IDE

Run Benchmark.main() with arguments such as:

    -d jdbc:postgresql://localhost/mydb -U myuser -P mypass -p -x
    
See Options.java for all options and defaults.

## Usage from the command line

Build with Maven:
    
    $ mvn package
    
Run self-contained jar file with arguments such as:

    java -jar target/benchmark-1.0-SNAPSHOT.jar -d jdbc:postgresql://localhost/mydb -U myuser -P mypass -p -x
 
Use `--help` to list all options and defaults.

## List of Options
```
Options:
    -c, --clients
        number of client threads
        Default: 1
    -d, --database
        JDBC database url
        Default: jdbc:postgresql://localhost/bench
    -x, --execute
        execute the workload
        Default: false
    -h, -?, --help
        display usage information
    -P, --password
        database password
    -p, --populate
        create and initialize tables
        Default: false
    -R, --runtime
        run time
        Default: 10
    -s, --scale
        the benchmark scale (the number of clients and products will be equal to 2^s)
        Default: 10
    -U, --user
        database user name
    -W, --warmup
        warmup time
        Default: 5
```

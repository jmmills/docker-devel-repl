# docker-devel-repl

Devel::REPL on top of dist-zilla and plenv

Enabled Plugins:

-   -   LexEnv

    -   History

    -   DumpHistory

    -   Nopaste

    -   Colors

    -   Timing

Basic example:

    $ docker pull jmmills/devel-repl
    $ docker run -t -i --rm jmmills/devel-repl
    $ my $a = [ 'one', 'two', 'three' ]
    $ARRAY1 = [
                'one',
                'two',
                'three'
              ];

Or, maybe you want a custom repl.rc and some modules install?

No problem, use a volume to your .re.pl directory and commit your
modified container where \$container is the docker container ID (also
hostname in most cases)

    $ docker run -t -i -v $HOME/.re.pl:/.re.pl jmmills/devel-repl
    $ shell
    root@$container:/# cpanm Acme
    ...
    root@$container:/# exit
    $ use Acme
    Took 0.00755095481872559 seconds.

Now commit your container in a different shell with a nice shorthand
container name.

    $ docker commit $container re.pl
    # you can kill you state container
    $ docker kill $container
    $ docker run -i -t --rm re.pl
    $ use Acme 
    Took 0.009613037109375 seconds.
    $ exit

Maybe be like me and setup a re.pl alias so when sandboxing you are
always in a container.

    $ alias re.pl='docker run -i -t --rm -v $HOME/.re.pl:/.re.pl jmmills/devel-repl'
    $ re.pl
    $ 1 + 1 Took 0.00048518180847168 seconds.
    2
    $ exit

Or another way, extend the original image as your own sandbox build

    $ cat Dockerfile 
    FROM jmmills/devel-repl 
    RUN cpanm Acme 
    ENTRYPOINT ["/usr/local/bin/re.pl"] 
    CMD [""]
    $ docker build -t re.pl .
    $ docker run -i -t --rm re.pl
    $ use Acme
    Took 0.00991296768188477 seconds.
    $ exit

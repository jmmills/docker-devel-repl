docker-devel-repl
=================

Devel::REPL on top of dist-zilla and plenv
Enabled Plugins:
	LexEnv
	History
	DumpHistory
	Nopaste
	Colors
	Timing

```
$ docker pull jmmills/devel-repl
$ docker run -t -i jmmills/devel-repl

root@$container:/# cpanm Acme
root@$container:/# re.pl

$ use Acme
$ my $a = [ 'one', 'two', 'three' ]
$ARRAY1 = [
            'one',
            'two',
            'three'
          ];

```

The Vagrant way?

```
$ git clone https://github.com/coreos/coreos-vagrant/
Cloning into 'coreos-vagrant'...
$ cd coreos-vagrant/
$ vagrant up
Bringing machine 'core-01' up with 'virtualbox' provider...
...
$ vagrant ssh
CoreOS (alpha)
core@core-01 ~ $ docker pull jmmills/devel-repl
Pulling repository jmmills/devel-repl
...
core@core-01 ~ $ docker run -t -i jmmills/devel-repl
root@$container:/# cpanm Acme
...
root@$container:/# re.pl
$ use Acme
Took 0.00755095481872559 seconds.


$ my $a = [ qw[ one two three four ] ]
Took 0.000240087509155273 seconds.

$ARRAY1 = [
            'one',
            'two',
            'three',
            'four'
          ];

$ exit
```

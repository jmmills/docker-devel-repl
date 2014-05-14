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

root@$container:/# cpanm Some::Silly::Module
root@$container:/# re.pl

$ use Some::Silly::Module
$ my $a = [ 'one', 'two', 'three' ]
$ARRAY1 = [
            'one',
            'two',
            'three'
          ];

```

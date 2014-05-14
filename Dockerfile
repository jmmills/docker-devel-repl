# VERISON 0.99.0

FROM jmmills/dist-zilla
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
RUN cpanm Devel::REPL
RUN cpanm Lexical/Persistence.pm
RUN cpanm Data::Dump::Streamer
RUN apt-get install libterm-readline-gnu-perl

CMD ["/bin/bash", "-l"]

# VERISON 0.99.0

FROM jmmills/dist-zila
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
RUN apt-get install -y libssl-dev
RUN cpanm Devel::REPL

CMD ["/bin/bash", "-l"]

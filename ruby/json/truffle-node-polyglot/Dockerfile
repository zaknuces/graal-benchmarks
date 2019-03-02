FROM oracle/graalvm-ce:1.0.0-rc12

ENV GRAALVM_HOME=/opt/graalvm-ce-1.0.0-rc12
ENV PATH=$GRAALVM_HOME/:$GRAALVM_HOME/bin/:$PATH

RUN gu install ruby

WORKDIR /usr/src/app

COPY Gemfile ./

RUN gem install bundler -v 1.16.5
RUN bundle install

COPY . .

CMD ruby --jvm --polyglot -Xsingle_threaded test.rb

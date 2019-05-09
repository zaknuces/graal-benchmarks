FROM oracle/graalvm-ce:1.0.0-rc16

ENV GRAALVM_HOME=/opt/graalvm-ce-1.0.0-rc16
ENV PATH=$GRAALVM_HOME/:$GRAALVM_HOME/bin/:$PATH

RUN gu install ruby

WORKDIR /usr/src/app

COPY Gemfile ./

RUN bundle install

COPY . .

CMD ruby test.rb

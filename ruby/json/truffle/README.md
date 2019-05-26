# How to use this benchmark

## Run it in docker container
docker build -t json-truffle .
docker run -it json-truffle

## Run cpusampler 
ruby --cpusampler --cpusampler.Mode=statements test-profile.rb


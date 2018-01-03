# circleci-python3.6-java8
custom Docker ubuntu image with java 8 and python3.6 for circle ci.
Currently Circle ci official image only provides up to Ubuntu 14.04, apt-get java 8 is not working on ubuntu 14.04. This docker image based on Ubuntu, with Java 8(oracle openjdk) and python 3.6(with `pip` module preinstalled).

## Usage
Get the image:
```
docker pull hancheng/circleci-python3.6-java8
```

Use it in `Dockerfile`:
```
FROM hancheng/circleci-python3.6-java8
```

Use it in `Circle ci`:
```
docker:
    - image: hancheng/circleci-python3.6-java8
```

With tags `browsers` the docker image has browsers pre-installed. Use it in `Circle ci`:
```
docker:
    - image: hancheng/circleci-python3.6-java8:browsers
```

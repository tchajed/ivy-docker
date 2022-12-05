# Ivy in docker

## Usage

Get this from Docker Hub: `docker pull docker.io/tchajed/ivy:latest`.

Then just use `./ivy_check` as usual. You might want to add this repo to your
`$PATH`.

`./ivy_check [ivy options] path_to_file.ivy`

## Development

Create image (takes a while, needs to compile some large C++ dependencies):

```
docker build -t tchajed/ivy:latest .
docker push tchajed/ivy
```

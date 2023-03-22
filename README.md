# Ivy in docker

## Usage

Get this from Docker Hub: `docker pull tchajed/ivy`.

Then just use `./ivy_check` as usual. You might want to add this repo to your
`$PATH`.

`./ivy_check [ivy options] path_to_file.ivy`

You can also use `./ivy_show` in the same way.

## Development

Create image (takes a while, needs to compile some large C++ dependencies):

```sh
docker build -t tchajed/ivy:latest .
docker push tchajed/ivy
```

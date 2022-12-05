# Ivy in docker

Create image (takes a while, needs to compile some large C++ dependencies):

`docker build -t ivy .`

Run:

`./ivy_check.sh [ivy options] path_to_file.ivy`

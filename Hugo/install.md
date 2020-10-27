# Hugo Installation

See instructions for your OS [here](https://gohugo.io/getting-started/installing/).


## Linux

Debian/Ubuntu

```sh
$ sudo apt-get install hugo
```

Other - see [Linux](https://gohugo.io/getting-started/installing/#linux) install steps.

You can install manually. Based on [script](https://github.com/Umuzi-org/ACN-syllabus/blob/develop/install_hugo.sh).

```sh
VERSION="0.51"

wget "https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz" 
tar -xf hugo_${VERSION}_Linux-64bit.tar.gz hugo -C / 
sudo mv hugo /usr/bin/hugo

rm hugo_${VERSION_HUGO}_Linux-64bit.tar.gz
```

## macOS

```sh
$ brew install hugo
```
```sh
$ type hugo
hugo is /usr/local/bin/hugo
```
```sh
$ hugo version
Hugo Static Site Generator v0.55.6/extended darwin/amd64 BuildDate: unknown
```

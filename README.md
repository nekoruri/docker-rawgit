Dockerfile for RawGit
=====================

## About

Dockerfile for [RawGit](https://github.com/rgrove/rawgit)

## SYNOPSIS

```
docker run -e FQDN=myhost.example.jp -p 80:80 -p 443:443 nekoruri/rawgit:0.1
```

## TODO

- SSL Certificate
- CDN Support (FQDN for production)
- VOLUME support(cache/log)

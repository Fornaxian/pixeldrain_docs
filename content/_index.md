# Pixeldrain documentation

Welcome to our brand new documentation site. First I'll quickly explain what
pixeldrain is:

Pixeldrain is a file hosting website originally developed by
[Fornax](https://fornaxian.tech) during his lunch breaks at school. It allows
you to quickly upload files and share them with other people around the world.
From humble beginnings, pixeldrain has grown to be one of the largest file
hosting platforms on the internet, serving hundreds of millions of files every
month.

## Features

### Free

* Upload files up to 10 GB in size.
* Download up to 6 GB per day.
* Files expire 60 days after the last time they are downloaded.
* No storage limit

### Pro (€4 / month)

* Upload files up to 100 GB in size.
* Download up to 4 TB per 30 days.
* Files expire 120 days after the last time they are downloaded.
* No storage limit
* Download and share files without using the download page (hotlinking)

### Prepaid (€0.01 / day, €10 minimum deposit)

* Upload files up to 100 GB in size.
* No download limit (downloads are charged at €1 / TB downloaded)
* Files do not expire
* No storage limit (storage is charged at €4 / TB / month)
* Download and share files without using the download page (hotlinking)

## History

The first code commit related to pixeldrain was on 2013-11-25. This was for a
Java desktop application to upload files to the pixeldrain server which was
written in PHP at the time. Pixeldrain already existed at this point, but not in
source control. I am not entirely certain when I started working on pixeldrain,
but it must have been somewhere in the summer of 2013.

The pixeldrain.com domain name was registered on 2015-06-07 at 21:18 CET. At
this point the site was still running as a simple PHP script which accepted
uploads and stored them in a directory. This script was running on a Vultr VPS
server with 1 TB of hard drive space.

In June 2016 the site has started growing a little bit, and I was not really a
fan of coding in PHP. At school I was learning Java (and I also played a lot of
Minecraft, which heavily influenced my interest in Java), so I decided to
rewrite the site in Java using the Spring framework.

During 2017 I had already run into some issues with the Java application.
Dependency management was a mess, a new version of Spring had come out and I
could not figure out how to upgrade to it without a complete rewrite. The Java
server was also really slow, and restarting it to update the software took the
whole site down for multiple minutes.

I was also very interested in cryptocurrency at this point. I had an obsession
with Bitcoin since the very first whitepaper. While looking for ways to expand
my storage capacity I came across the [Sia project](https://sia.tech/). I became
friends with the developers and we talked a lot about tech. Sia is written in
[Go](https://go.dev/), which was still fairly new at this point. Go was pretty
easy to learn and I wanted to move away from Java anyway, so I decided to
rewrite pixeldrain in Go to learn the language.

The first commit to the Go repository of pixeldrain was made on 2017-11-10, and
it immediately contained 2523 lines of Go code across 33 files. It was not very
good, but I was still learning. The Sia devs were also immensely helpful with
teaching me the language.

As the Go server was much faster and more stable than the Java server,
pixeldrain quickly started to gain popularity at this point.

By 2020 I had realized that running the site on ad revenue might not be
sustainable. On 2020-06-05 I launched my Patreon page, subscribers could browse
the site ad-free and their files would last longer before being deleted.

For more history, please refer to my [blog on
Patreon](https://www.patreon.com/c/pixeldrain). In the future I may copy all
posts to this site as well.

+++
date = "2026-03-26"
+++

# Automated scanning

Pixeldrain scans uploaded images and videos against known CSAM (Child Sexual
Abuse Material) databases. Currently we are working with [Project
Arachnid](https://projectarachnid.ca/en/) and [Stichting
Offlimits](https://offlimits.nl/).

We will periodically check every image and video file on the site against these
databases. Once there is a match with one of the databases, the file will be
removed from our database and the IP address and account which uploaded the file
will be banned.

## Technical details

Pixeldrain scans files using the PDQ hash algorithm developed by Meta. The
specific implementation we use is this one:
[pdqhash](https://github.com/darwinium-com/pdqhash).

Since the hash is calculated on our own servers locally, and the hash contains
no details about the image file itself, it means that user data is never shared
with other parties. It's completely private.

For video files we use [ffmpeg](https://ffmpeg.org/) to export all keyframes of
the video file to regular jpegs. Then we calculate the PDQ hash of each frame
and check them all against the database separately.

The CSAM databases are continuously updated with new material. Files on
pixeldrain are scanned repeatedly so we can also catch up on later additions to
the databases. On average each file is checked once every 6 days.

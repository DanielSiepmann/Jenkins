## About

This is my personal docker setup for Jenkins.

Currently I'm new to both, Docker and Jenkins, so it's neither a good reference,
nor ready for professional usage.

## Goal

The goal is to have a single setup to get Jenkins up and running with all
necessary components that I need personally.

## To do

The following tasks mark the package as not helpful at the moment and need to
be done soon:

1. Persist configuration like jobs and build results between start ups.

## Usage

1. Clone Repository
2. Build docker image from inside the repository `docker build -t custom/jenkins .`
3. Start Jenkins

For further information, take a look at [Jenkins documentation about
Docker](https://github.com/jenkinsci/docker/tree/e7d56fa71d44ace1f1d8258ef216bba64f266cca#official-jenkins-docker-image)
at Github. As this image builds upon the existing version and everything
documented there is also true for this image.

## Components

### Currently included

- PHPCS (PHP Code Sniffer)
- ReST (+Sphinx, + some pip modules for TYPO3 Documentation rendering)
- Some further Jenkins Plugins (see plugins.txt)

### Included in the future

- PHPMD (PHP Mass Detection)
- TypoLink Linter
- SonarQube
- PHPUnit (some day)
- PHP Api Generation (perhaps)

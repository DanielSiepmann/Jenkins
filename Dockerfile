# Extend basic jenkins for our needs, following: https://github.com/jenkinsci/docker/tree/e7d56fa71d44ace1f1d8258ef216bba64f266cca#installing-more-tools
FROM jenkins:latest

# As we derive from jenkins, we have to switch back to root for setup
    USER root

# Install sphinx and pip
    RUN apt-get -y update && apt-get -y install python-sphinx python-pip python-dev build-essential && \
        pip install --upgrade pip && pip install --upgrade virtualenv

# Install requirements for pip Pillow
    RUN apt-get -y install libtiff5-dev libjpeg62 zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk

# Install TYPO3 pip requirements
    RUN pip install --upgrade pyyaml && \
        pip install --upgrade Pillow

# Install TYPO3 specific pip packages like theme.
    RUN pip install --upgrade t3SphinxThemeRtd && \
        pip install --upgrade t3fieldlisttable && \
        pip install --upgrade t3tablerows && \
        pip install --upgrade t3targets

# Install necessary Jenkins Plugins
    COPY plugins.txt /usr/share/jenkins/plugins.txt
    RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# Switch back to original user
    USER jenkins

mongodb-10gen:
    pkgrepo:
    - managed
    - name: deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen
    - keyserver: keyserver.ubuntu.com
    - keyid: 7F0CEB10
    - require_in:
        - pkg: mongodb-10gen
    pkg:
        - installed

mongodb:
  service:
    - running
nodejs:
    pkgrepo:
    - managed
    - ppa: chris-lea/node.js
    - require_in:
        - pkg: nodejs
    pkg:
        - installed
    service:
        - running
        - require:
            - npm.bootstrap: {{ pillar["app_path"] }}
        - watch:
            - file: /etc/init/nodejs.conf
 
/etc/init/nodejs.conf:
    file.managed:
      - source: salt://nodeapp/nodejs.conf
      - user: root
      - group: root
      - mode: 644
      - template: jinja
      - require:
        - pkg: nodejs
        - npm.installed: forever
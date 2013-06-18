 nodejs:
    pkgrepo:
    - managed
    - ppa: chris-lea/node.js
    - require_in:
        - pkg: nodejs
    pkg:
        - installed
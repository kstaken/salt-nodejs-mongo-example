git:
  pkg:
    - installed
    
{{ pillar["app_url"] }}:
  git.latest:
    - rev: {{ pillar["app_branch"] }}
    - target: {{ pillar["app_path"] }}
    - require:
      - pkg: git

{{ pillar["app_path"] }}:
    npm.bootstrap: 
      - require:
        - pkg: nodejs
        - git.latest: {{ pillar["app_url"] }}



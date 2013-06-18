git:
  pkg:
    - installed
    
{{ pillar["app_url"] }}:
  git.latest:
    - rev: {{ pillar["app_branch"] }}
    - target: {{ pillar["app_path"] }}
    - require:
      - pkg: git

Install dependencies:
  cmd.run:
    - name: npm install
    - cwd: {{ pillar["app_path"] }}
    - require:
      - pkg: nodejs
      - pkg: mongodb-10gen

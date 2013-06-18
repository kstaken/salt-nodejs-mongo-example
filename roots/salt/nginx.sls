nginx:
  pkg:
    - name: {{ pillar['package'] }}
    - installed
  service:
    - running

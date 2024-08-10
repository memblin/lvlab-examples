"{{ sls }} add content to a file for testing":
  file.managed:
    - name: /tmp/salt_managed_file
    - user: root
    - group: root
    - mode: 0644
    - contents_pillar: common:some_secret

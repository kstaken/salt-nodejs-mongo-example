A basic example using Salt Stack to install a node.js/mongodb application directly from git. 

This uses pillar data to configure the application and assumes the application has a packages.json file to define dependencies.

  roots/pillar/config.sls

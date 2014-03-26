git-custom-build Cookbook
============

Install git from custom build packages.

Requirements
------------

- Chef 11 or higher
- CentOS 6

Attributes
----------

#### git-custom-build::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['git']['version']</tt></td>
    <td>String</td>
    <td>git packages version</td>
    <td><tt>1.9.0-1.el6</tt></td>
  </tr>
  <tr>
    <td><tt>['git']['host']</tt></td>
    <td>String</td>
    <td>hostname which git packages hosted</td>
    <td><tt>rpms.itee.jp</tt></td>
  </tr>
  <tr>
    <td><tt>['git']['packages']</tt></td>
    <td>String</td>
    <td>git packages</td>
    <td><tt>perl-Git, git</tt></td>
  </tr>
</table>

Usage
-----
#### git-custom-build::default

Download and install git packages.

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors

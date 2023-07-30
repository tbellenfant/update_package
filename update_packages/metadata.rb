name             'update_packages'
maintainer       'Test123'
maintainer_email 'test@test.com'
license          'All rights reserved'
description      'Updates OS Packages'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe          "update_packages::update_openssh",		        "update openssh"

attribute "update_packages",
    :display_name => "Update Packages",
    :type => "hash"

attribute "update_packages/update_openssh",
    :display_name => "Update OpenSSH",
    :description => "Update OpenSSH to a newer version",
    :required => "recommended",
    :type => "array",
    :recipes => ["update_packages::update_openssh"]

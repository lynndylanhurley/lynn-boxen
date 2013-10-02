class nvms {
  $node_version = "v0.10.13"
  class { 'nodejs::global': version => "${node_version}" }

  nodejs::module { "yo for ${node_version}":
    node_version => "${node_version}",
    module       => "yo"
  }

  nodejs::module { "generator-webapp for ${node_version}":
    node_version => "${node_version}",
    module       => "generator-webapp"
  }

  nodejs::module { "docco for ${node_version}":
    node_version => "${node_version}",
    module       => "docco"
  }

  nodejs::module { "dox for ${node_version}":
    node_version => "${node_version}",
    module       => "dox"
  }

  nodejs::module { "jsctags for ${node_version}":
    node_version => "${node_version}",
    module       => "jsctags"
  }

  nodejs::module { "instant-markdown-d for ${node_version}":
    node_version => "${node_version}",
    module       => "instant-markdown-d"
  }

  nodejs::module { "bower for ${node_version}":
    node_version => "${node_version}",
    module       => "bower"
  }

  nodejs::module { "grunt for ${node_version}":
    node_version => "${node_version}",
    module       => "grunt"
  }

  nodejs::module { "brunch for ${node_version}":
    node_version => "${node_version}",
    module       => "brunch"
  }
}

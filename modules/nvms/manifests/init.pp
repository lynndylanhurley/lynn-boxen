class nvms {
  class { 'nodejs::global': version => 'v0.8.8' }

  nodejs::module { "docco for v0.10.5":
    node_version => 'v0.10.5',
    module       => "docco"
  }

  nodejs::module { "dox for v0.10.5":
    node_version => 'v0.10.5',
    module       => "dox"
  }

  nodejs::module { "jsctags for v0.10.5":
    node_version => 'v0.10.5',
    module       => "jsctags"
  }

  nodejs::module { "instant-markdown-d for v0.10.5":
    node_version => 'v0.10.5',
    module       => "instant-markdown-d"
  }

  nodejs::module { "bower for v0.10.5":
    node_version => 'v0.10.5',
    module       => "bower"
  }

  nodejs::module { "grunt for v0.10.5":
    node_version => 'v0.10.5',
    module       => "grunt"
  }

  nodejs::module { "brunch for v0.10.5":
    node_version => 'v0.10.5',
    module       => "brunch"
  }

  nodejs::module { "docco for v0.8.8":
    node_version => 'v0.8.8',
    module       => "docco"
  }

  nodejs::module { "dox for v0.8.8":
    node_version => 'v0.8.8',
    module       => "dox"
  }

  nodejs::module { "jsctags for v0.8.8":
    node_version => 'v0.8.8',
    module       => "jsctags"
  }

  nodejs::module { "instant-markdown-d for v0.8.8":
    node_version => 'v0.8.8',
    module       => "instant-markdown-d"
  }

  nodejs::module { "bower for v0.8.8":
    node_version => 'v0.8.8',
    module       => "bower"
  }

  nodejs::module { "grunt for v0.8.8":
    node_version => 'v0.8.8',
    module       => "grunt"
  }

  nodejs::module { "brunch for v0.8.8":
    node_version => 'v0.8.8',
    module       => "brunch"
  }
}

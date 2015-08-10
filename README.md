# base

#### Table of Contents

1. [Overview](#overview)
2. [Usage - Configuration options and additional functionality](#usage)
3. [Limitations - OS compatibility, etc.](#limitations)

## Overview

Base module for the Computer Science department at Western University.
Currently, the module only installs a few packages that we want on every
system.  Likely not applicable to any other environment.

## Usage

To have the default packages installed, simply include the module:

```puppet
include base
```

To override the package defaults:

```puppet
class { 'base':
  packages => ['tmux', 'vim'],
}
```

To append to the package defaults:

```puppet
class { 'base':
  packages +> ['tmux', 'vim'],
}
```

## Limitations

Currently, this module supports only CentOS 7.x.

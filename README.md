# Puppet Module geoip
#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with geoip](#setup)
    * [What geoip affects](#what-geoip-affects)
    * [Beginning with geoip](#beginning-with-geoip)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Manages [Maxmind GeoIP database](https://www.maxmind.com/).

## Module Description

Installs packages containing executables and libraries, and manages the database files.

## Setup

### What geoip affects

* `/etc/GeoIP.conf`
* packages relative to geoip
* cron job to update databases

### Beginning with geoip

## Usage

### Default

```puppet
include ::geoip
```

### Custom

```puppet
class { '::geoip':
  autoupdate => false,
  userid => '1234567',
  licensekey => '1234567',
  productids => ['506', 'GeoLite2-City'],
  manage_defaultdb => true,
  defaultdb => 'GeoLite2-City'
}
```

## Reference

### Class geoip

#### Parameters

* `package_name` string containing the name of the Service to manage. Defaults to OS specific value (see `params.pp`)
* `update_command` string containing the name of the command to execute geoip updates. Defaults to OS specific value (see `params.pp`)
* `db_dir` string containing the path to geoip's dbfile location. Defaults to OS specific value (see `params.pp`)
* `userid` string containing maxmind customer id. Defaults to free account
* `licensekey` string containing maxmind license id. Defaults to free lite license.
* `productids` array containing list of [databases](https://dev.maxmind.com/geoip/geoipupdate/) to download
* `autoupdate` boolean controlling wether cronjob should be installed to update geoip databases on a daily basis. Defaults to `true`
* `manage_defaultdb` boolean controlling wether we should manage the API's default db. Defaults to `false`
* `defaultdb` string containing the name of the default db. Defaults to `GeoLiteCity`

### Class geoip::update

Manages the autoupdate process. Cureently implemented by a cronjob.
No parameters yet.

### Class geoip::defaultdb

Manages the default db file. Cureently implemented by a symlink.
No parameters yet.

## Limitations

Only tested on Debian 8 and Centos 7

## Development

### Testing

```
bundle install --path vendor/bundle
bundle exec rake spec
```

### Issues

https://gitlab.in2p3.fr/cc-in2p3-puppet-service/geoip


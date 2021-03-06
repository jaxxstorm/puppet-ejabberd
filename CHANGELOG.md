# Changelog

## 0.0.5 2014-09-18
- Added param $include_epel to disable epel being included. Use this on CentOS if you get the ejabberd package from elsewhere. (thanks to @michael-leroy)

## 0.0.4 2014-03-23
- Fixed path error when installing MySQL driver and contrib modules on 32-bit architectures
- Fixed user already exists error on subsequent puppet runs when more than one ejabberd user has been added (thanks to @michael-leroy)

## 0.0.3 2014-01-26
- ejabberd is now installed from epel on RedHat
- Added missing vcsrepo dep to modulefile
- Added service_reload parameter to configure module to either reload or restart ejabberd when config changes

## 0.0.2 2014-01-20
- Calls ejabberdctl load_config to reload ACLs when config changes. This means that ejabberd is no longer restarted when config changes.
- Allow ejabberd config file to be specified
- Allow package name and package ensure to be specified
- Some specs added
- Native erlang MySQL driver added

## 0.0.1 2014-01-10
- Initial release

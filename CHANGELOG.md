# Changelog

## [0.8.1](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.8.0...v0.8.1) (2019-10-09)


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/dhcpd-formula/commit/3e11354))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/dhcpd-formula/commit/5ec2e57))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/dhcpd-formula/commit/f914fe3))
* **kitchen+travis:** replace EOL pre-salted images ([](https://github.com/saltstack-formulas/dhcpd-formula/commit/c33b06b))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([](https://github.com/saltstack-formulas/dhcpd-formula/commit/99c7477))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/dhcpd-formula/commit/0688273))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/dhcpd-formula/commit/d7c9254))
* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([](https://github.com/saltstack-formulas/dhcpd-formula/commit/5dc28e1))


### Tests

* **inspec:** add remaining platforms [skip ci] ([](https://github.com/saltstack-formulas/dhcpd-formula/commit/483d70d))

# [0.8.0](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.7.1...v0.8.0) (2019-08-10)


### Features

* **yamllint:** include for this repo and apply rules throughout ([d70c724](https://github.com/saltstack-formulas/dhcpd-formula/commit/d70c724))

## [0.7.1](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.7.0...v0.7.1) (2019-07-31)


### Code Refactoring

* **indent:** use filter block to indent included files ([451667f](https://github.com/saltstack-formulas/dhcpd-formula/commit/451667f))

# [0.7.0](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.6.0...v0.7.0) (2019-07-31)


### Continuous Integration

* **travis:** initialize kitchen infrastructure ([472a1c4](https://github.com/saltstack-formulas/dhcpd-formula/commit/472a1c4))


### Documentation

* **readme:** move under doc/ and add contributing documentation ([523e19a](https://github.com/saltstack-formulas/dhcpd-formula/commit/523e19a))


### Features

* **semantic-release:** implement an automated changelog ([b5ad74e](https://github.com/saltstack-formulas/dhcpd-formula/commit/b5ad74e))


### Tests

* **config:** the daemon configuration file must exist ([840c225](https://github.com/saltstack-formulas/dhcpd-formula/commit/840c225))
* **packages:** we have only one installed package ([9b9fa1e](https://github.com/saltstack-formulas/dhcpd-formula/commit/9b9fa1e))
* **service:** the service configuration file must exist ([eb3c948](https://github.com/saltstack-formulas/dhcpd-formula/commit/eb3c948))
* **service:** the service must be installed but disabled ([174c2e7](https://github.com/saltstack-formulas/dhcpd-formula/commit/174c2e7))

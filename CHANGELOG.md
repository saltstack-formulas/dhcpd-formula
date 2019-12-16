# Changelog

# [0.9.0](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.8.1...v0.9.0) (2019-12-16)


### Bug Fixes

* **release.config.js:** use full commit hash in commit link [skip ci] ([1c516f5](https://github.com/saltstack-formulas/dhcpd-formula/commit/1c516f57e848f0bcb9fe03cb82284a4c3c6bb41c))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([f838b4d](https://github.com/saltstack-formulas/dhcpd-formula/commit/f838b4d4733452d36d62cfe4ef9b7ee57752a01f))
* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([7ca8c7a](https://github.com/saltstack-formulas/dhcpd-formula/commit/7ca8c7a1913fbbf01712a2ce4d5c3d1443f3b6b8))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([e009040](https://github.com/saltstack-formulas/dhcpd-formula/commit/e009040d28afe4e1bd07156580a18723b9cbb1d5))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([d7591f0](https://github.com/saltstack-formulas/dhcpd-formula/commit/d7591f0dcb5d677294685bb7f1acb26245abba5d))
* **travis:** apply changes from build config validation [skip ci] ([df6ce3e](https://github.com/saltstack-formulas/dhcpd-formula/commit/df6ce3e5d343d07a9ccd33501059edd6359e6343))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([7fb1a93](https://github.com/saltstack-formulas/dhcpd-formula/commit/7fb1a936230e2732d23a9edae11fc4f96fd0daac))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([67c340d](https://github.com/saltstack-formulas/dhcpd-formula/commit/67c340d3099c78ee7c0079cde9fb5609fbb54bc6))
* **travis:** run `shellcheck` during lint job [skip ci] ([4a192fe](https://github.com/saltstack-formulas/dhcpd-formula/commit/4a192fe586bf55e4bb680c51e60828260c2d889d))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([14eecc2](https://github.com/saltstack-formulas/dhcpd-formula/commit/14eecc2114e42f8c97dc66f49250b3bbbae655d5))
* **travis:** use build config validation (beta) [skip ci] ([8068a89](https://github.com/saltstack-formulas/dhcpd-formula/commit/8068a890085582ab499dd7972f6e560a18c39330))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([8ed2593](https://github.com/saltstack-formulas/dhcpd-formula/commit/8ed2593917824945b0be96c8120fa564981ef0b5))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([77da7be](https://github.com/saltstack-formulas/dhcpd-formula/commit/77da7bed48d9b352b9b47f73a2d267220839fb69))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([d40fd74](https://github.com/saltstack-formulas/dhcpd-formula/commit/d40fd748d8a4b69a1ee03bf5b5b74938e26d6dfc))


### Features

* **map.jinja:** add Gentoo support ([934bcf4](https://github.com/saltstack-formulas/dhcpd-formula/commit/934bcf4459529a3c2112402746208555c2f1858e))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([42a525d](https://github.com/saltstack-formulas/dhcpd-formula/commit/42a525ddb48107365467bdf952d190bcc67825be))

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

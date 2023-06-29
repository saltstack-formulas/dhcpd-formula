# Changelog

## [0.11.5](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.11.4...v0.11.5) (2021-10-20)


### Bug Fixes

* **dhcpd.conf:** use peer_port for peer port ([809daac](https://github.com/saltstack-formulas/dhcpd-formula/commit/809daace338c32f000c64f6d02d12c730480eb3c))


### Continuous Integration

* **3003.1:** update inc. AlmaLinux, Rocky & `rst-lint` [skip ci] ([55fd4f6](https://github.com/saltstack-formulas/dhcpd-formula/commit/55fd4f632070a8fbf64124ff9b6c749618f96ce9))
* **gemfile+lock:** use `ssf` customised `inspec` repo [skip ci] ([f9883c8](https://github.com/saltstack-formulas/dhcpd-formula/commit/f9883c85132f406ac9c9ed3e85f9c5df10aae7d1))
* **kitchen:** move `provisioner` block & update `run_command` [skip ci] ([2668399](https://github.com/saltstack-formulas/dhcpd-formula/commit/2668399df205988e8b3f89506918621aec4e7cfc))
* **kitchen+ci:** update with latest `3003.2` pre-salted images [skip ci] ([734c11b](https://github.com/saltstack-formulas/dhcpd-formula/commit/734c11b5b5011e92cec6aae7112dccfa59b2afb2))
* **kitchen+ci:** update with latest CVE pre-salted images [skip ci] ([abc3335](https://github.com/saltstack-formulas/dhcpd-formula/commit/abc333566773943f5a44e4bfe47b3429bee01033))
* add `arch-master` to matrix and update `.travis.yml` [skip ci] ([ce6274b](https://github.com/saltstack-formulas/dhcpd-formula/commit/ce6274be15cadec599b5a20754c4aa710bb58555))
* add Debian 11 Bullseye & update `yamllint` configuration [skip ci] ([49690fc](https://github.com/saltstack-formulas/dhcpd-formula/commit/49690fce8b7e14bab2f9289f707e4340e3d0a06a))
* **gemfile+lock:** use `ssf` customised `kitchen-docker` repo [skip ci] ([1f8fe87](https://github.com/saltstack-formulas/dhcpd-formula/commit/1f8fe87c24f076382b6b6f7045b8e26ee61b1864))
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] ([c72a78e](https://github.com/saltstack-formulas/dhcpd-formula/commit/c72a78e9c95d52280a2bcad8e8425812fb705189))
* **kitchen+gitlab:** adjust matrix to add `3003` [skip ci] ([23174d2](https://github.com/saltstack-formulas/dhcpd-formula/commit/23174d29680206294cdb175af1850e2a2af65d17))
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] ([3477749](https://github.com/saltstack-formulas/dhcpd-formula/commit/34777493d51b87c2633de09912747a31039ac1ff))
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] ([6eedf55](https://github.com/saltstack-formulas/dhcpd-formula/commit/6eedf55bfbf857db9f6f3d189aa892d08e7c8ad0))
* **pre-commit:** update hook for `rubocop` [skip ci] ([b69b89b](https://github.com/saltstack-formulas/dhcpd-formula/commit/b69b89bd1ec08b6259417cdac97dcd2644afa2e5))


### Tests

* **_mapdata:** add verification file for `debian-11` [skip ci] ([c8a1e21](https://github.com/saltstack-formulas/dhcpd-formula/commit/c8a1e212938117a4f61407fe53def98233ae5131))
* **_mapdata:** add verification file for `fedora-34` [skip ci] ([c44e1ca](https://github.com/saltstack-formulas/dhcpd-formula/commit/c44e1ca27f30311c65f34e390dda3dc0d69b907d))
* standardise use of `share` suite & `_mapdata` state [skip ci] ([cf811ec](https://github.com/saltstack-formulas/dhcpd-formula/commit/cf811ec90ad81b694a0232afe47102c22f12fbb0))
* **_mapdata:** add verification files for new platforms ([9e494f4](https://github.com/saltstack-formulas/dhcpd-formula/commit/9e494f4bf1d77d2a8a490c604c87f76da3e56c2b))
* **config_spec:** remove `spurious_whitespace` workaround for CentOS ([ed11b7a](https://github.com/saltstack-formulas/dhcpd-formula/commit/ed11b7a01e8f2144c941084eb69a3a6ad2d2da35))
* **share:** standardise with latest changes [skip ci] ([297dfe2](https://github.com/saltstack-formulas/dhcpd-formula/commit/297dfe23f6f08e2999a14b16dfab162b2312d622))

## [0.11.4](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.11.3...v0.11.4) (2021-01-14)


### Bug Fixes

* **_mapdata:** ensure map data is directly under `values` ([81fb960](https://github.com/saltstack-formulas/dhcpd-formula/commit/81fb96012d75e2e19784451e90fa5dd0e5e9ad17))


### Tests

* **_mapdata:** update for `_mapdata/init.sls` change ([743de98](https://github.com/saltstack-formulas/dhcpd-formula/commit/743de98b2f38201e396552346eb139bf46407e8b))

## [0.11.3](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.11.2...v0.11.3) (2020-12-27)


### Continuous Integration

* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([8c22f0b](https://github.com/saltstack-formulas/dhcpd-formula/commit/8c22f0bea349fdfb5ab786b48c025d700f6e9ff8))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([b7dcffa](https://github.com/saltstack-formulas/dhcpd-formula/commit/b7dcffabfc4f9393999f934d91cab94037c4c236))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([487fd0b](https://github.com/saltstack-formulas/dhcpd-formula/commit/487fd0b901f82e955fbb0554013420ad40713189))
* **pre-commit:** add to formula [skip ci] ([7814d97](https://github.com/saltstack-formulas/dhcpd-formula/commit/7814d97b658d8fbb8096778f5c23a34681a120fd))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([1a76032](https://github.com/saltstack-formulas/dhcpd-formula/commit/1a76032e5078e5211ea8ee7f5563b4af9735861f))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([52c33c9](https://github.com/saltstack-formulas/dhcpd-formula/commit/52c33c9047033ec0ccb9ccf01996b9a37c871e33))


### Tests

* **_mapdata:** generate verification files ([2ffc825](https://github.com/saltstack-formulas/dhcpd-formula/commit/2ffc825c1d2b267b81a876de3886d0ffb4e7a011))
* **map:** verify `map.jinja` dump using `_mapdata` state ([c8fbc79](https://github.com/saltstack-formulas/dhcpd-formula/commit/c8fbc79ec2443ec45881ce81f0500702e8d27400))

## [0.11.2](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.11.1...v0.11.2) (2020-09-24)


### Bug Fixes

* **dhcpd.conf:** fix bug 50 ([e015cda](https://github.com/saltstack-formulas/dhcpd-formula/commit/e015cdac5944cba0d821da31108ca26fe43a2da5)), closes [#50](https://github.com/saltstack-formulas/dhcpd-formula/issues/50)


### Continuous Integration

* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([e3d3bb3](https://github.com/saltstack-formulas/dhcpd-formula/commit/e3d3bb3b93f5686f3a32d411106de39d5b71fe9e))
* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([6e5d4fe](https://github.com/saltstack-formulas/dhcpd-formula/commit/6e5d4fe5ff331fea4fe6b63bbfe0db71d01523f5))
* **kitchen+travis:** add new platforms [skip ci] ([2e3f86e](https://github.com/saltstack-formulas/dhcpd-formula/commit/2e3f86ee12a0c1bab6c598f21109eaadc4ef790e))
* **kitchen+travis:** adjust matrix to add `3000.2` & remove `2018.3` [skip ci] ([1eac3c9](https://github.com/saltstack-formulas/dhcpd-formula/commit/1eac3c9c4d8a352f0a8c2d9b68faeafae47acc71))
* **kitchen+travis:** adjust matrix to add `3000.3` [skip ci] ([4fa9cb5](https://github.com/saltstack-formulas/dhcpd-formula/commit/4fa9cb54eeb4de109da50bf24766dca81a6cce23))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([aa2f881](https://github.com/saltstack-formulas/dhcpd-formula/commit/aa2f8818fab95889e1365f331bb71468c212bf45))
* **travis:** add notifications => zulip [skip ci] ([1726c5a](https://github.com/saltstack-formulas/dhcpd-formula/commit/1726c5a2c4a0ca2beb52b57795f6aa9cd8f3ca25))
* **workflows/commitlint:** add to repo [skip ci] ([9572bd8](https://github.com/saltstack-formulas/dhcpd-formula/commit/9572bd82e3659354eca0d6061f1af566a2cbad23))

## [0.11.1](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.11.0...v0.11.1) (2020-04-09)


### Bug Fixes

* **fedora:** install `dhcp-server` ([b91a3b1](https://github.com/saltstack-formulas/dhcpd-formula/commit/b91a3b1feb1d5e524eed26c6e5be014f1bd33435))
* **pillar.example:** remove spurious whitespaces found in `yaml_dump` ([d578996](https://github.com/saltstack-formulas/dhcpd-formula/commit/d57899643ea6be24b364bb5361034c120ee07ecd))
* **rubocop:** fix remaining violations ([106f9cb](https://github.com/saltstack-formulas/dhcpd-formula/commit/106f9cb36d8710b48c327541616347c7f94bea76))


### Continuous Integration

* **kitchen+travis:** adjust matrix to add `3000.1` & remove `2017.7` ([6bacfb3](https://github.com/saltstack-formulas/dhcpd-formula/commit/6bacfb326610ab3afc399e7aaf3c109ef66dfd75))


### Tests

* fix `arch` conditional and make `case` more Rubyish ([0b5bab2](https://github.com/saltstack-formulas/dhcpd-formula/commit/0b5bab25c02c63506b9b3701aeff72b587c354ac))

# [0.11.0](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.10.4...v0.11.0) (2020-04-09)


### Features

* **ldap:** add ldap backend support ([241f267](https://github.com/saltstack-formulas/dhcpd-formula/commit/241f2677631311991527381c87a10fb1926cf3c1))


### Tests

* fix tests for PR 44 ([5128b1f](https://github.com/saltstack-formulas/dhcpd-formula/commit/5128b1ff45dc88e51ad7221cd0dbc03a817159fa))

## [0.10.4](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.10.3...v0.10.4) (2020-04-06)


### Bug Fixes

* **map.jinja:** ensure whole pillar is merged in ([4baed92](https://github.com/saltstack-formulas/dhcpd-formula/commit/4baed92e8768e6e7cbd6537c9359d5a28e838387))


### Code Refactoring

* **tpls:** refactor templates ([9648e0d](https://github.com/saltstack-formulas/dhcpd-formula/commit/9648e0d0872db66e26ca11d6a0d860d6afff79ab))


### Tests

* **config_spec:** update according to refactored `map.jinja` ([880b281](https://github.com/saltstack-formulas/dhcpd-formula/commit/880b2815ee8102904b6586ded0d1e81412458575))
* **yaml_dump_spec:** update according to refactored `map.jinja` ([174e8d2](https://github.com/saltstack-formulas/dhcpd-formula/commit/174e8d22299d3dc464e2b5e0bf11fd280b51c27e))

## [0.10.3](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.10.2...v0.10.3) (2020-04-06)


### Tests

* **config_spec:** fix existing tests (repeating same control twice) ([3c7cd44](https://github.com/saltstack-formulas/dhcpd-formula/commit/3c7cd4483a1b012c33e0b0b53f16d3982f8d7e22))
* **config_spec:** update with file contents to test ([0ae0a66](https://github.com/saltstack-formulas/dhcpd-formula/commit/0ae0a660e8a02481495178e5996b9a0503613a7e))
* **config_spec:** workaround spurious whitespace issues on CentOS ([f4e12c5](https://github.com/saltstack-formulas/dhcpd-formula/commit/f4e12c58b74d428421e80b77b2a1e92eb128b166))

## [0.10.2](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.10.1...v0.10.2) (2020-04-06)


### Code Refactoring

* **map:** use `map.jinja` ng ([0ebe742](https://github.com/saltstack-formulas/dhcpd-formula/commit/0ebe7422d82f96484529581dc86dc2867c7348dc))


### Tests

* **yaml_dump_spec:** update ([a57912d](https://github.com/saltstack-formulas/dhcpd-formula/commit/a57912d18a6aa1b94a1455e8d692861f0cc0eb58))

## [0.10.1](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.10.0...v0.10.1) (2020-04-06)


### Tests

* **yaml_dump:** add functionality, initial tests & add to Kitchen ([76d43f5](https://github.com/saltstack-formulas/dhcpd-formula/commit/76d43f57595d595883b766c4bded8401d3fd0175))

# [0.10.0](https://github.com/saltstack-formulas/dhcpd-formula/compare/v0.9.0...v0.10.0) (2020-02-27)


### Continuous Integration

* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([fc755da](https://github.com/saltstack-formulas/dhcpd-formula/commit/fc755da7657b4161d31389c9db72a383f6751dcc))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([9780bc3](https://github.com/saltstack-formulas/dhcpd-formula/commit/9780bc33e621ac3595681bfc31ba65990a5c7afe))


### Features

* **map.jinja:** add Red Hat styled service configuration ([ebf6e50](https://github.com/saltstack-formulas/dhcpd-formula/commit/ebf6e5060fb82628c58ba99c010c90d746584338))

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

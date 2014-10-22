YAMC
----

Supports exactly one standalone `mongod` node.

| Recipe | Description |
| ------ | ----------- |
| `default` | Runs `install` then `configure`, sequentially. |
| `install` | Installs MongoDB, and starts up the `mongod` service. |
| `configure` | Renders `mongod.conf` then restarts the `mongod` service. |

The most up-to-date documentation is the code itself. The [configuration template][template] is intentionally in-lined for legibility purposes, and the [default attributes][attributes] carry the same descriptors as the table below.

| Attribute | Default | Description | 
| --------- | ------- | ----------- |
| `version` | `2.6.1` | The version of MongoDB to install. |
| `logPath` | `/var/log/mongodb` | Where MongoDB should keep its log files. |
| `dbPath`  | `/data/db` | Where MongoDB should keep its database files. |
| `port`    | `27017` | What port MongoDB should listen on. |
| `bindIp`  | `127.0.0.1` | The IP address MongoDB should bind to. |

There are also a few scripts in `scripts` if you're interested in contributing:

| Script | Description |
| ------ | ----------- |
| `bootstrap` | Bootstraps the environment for YAMC development. |
| `test` | Runs `utest` then `itest`, sequentially. |
| `utest` | Runs unit test on YAMC using `chefspec`. |
| `itest` | Runs integration (smoke) tests on YAMC using `test-kitchen`. |


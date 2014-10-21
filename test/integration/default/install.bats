#!/usr/bin/env bats

@test "MongoDB is installed." {
  dpkg -s mongodb-org
}


#!/usr/bin/env bats

@test "MongoDB is running" {
  [ `service mongodb status` ]
}


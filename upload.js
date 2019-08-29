#!/usr/bin/env node

let api_token = process.argv[2];
let bitrise_build_status = process.argv[3];
let bitrise_build_url = process.argv[4];

const pbl = new (require('pushbullet-log'))({ token: `${api_token}` });

if (bitrise_build_status == 0) {
  pbl.log("Build Passed!")
} else {
  pbl.warn("Build Failed!")
}
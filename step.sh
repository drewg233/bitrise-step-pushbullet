#!/bin/bash
set -ex

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $THIS_SCRIPT_DIR
npm install --prefix $THIS_SCRIPT_DIR pushbullet-log --save

$THIS_SCRIPT_DIR/upload.js "${pushbullet_access_token}" "${BITRISE_BUILD_STATUS}"

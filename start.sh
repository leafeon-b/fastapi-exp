#!/bin/bash
#
# FastAPI起動


set -eu


function main() {
  pushd ./app
  uvicorn main:app --reload
  popd
}

pushd `dirname "$0"` > /dev/null
main
popd > /dev/null

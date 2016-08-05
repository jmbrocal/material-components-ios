#!/bin/bash
#
# Copyright 2016-present the Material Components for iOS authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Generates a .jazzy.yaml for each component.

for d in components/*/README.md; do
  folder=$(dirname $d)
  component=$(basename $folder)

  cat > "$folder/.jazzy.yaml" <<EOL
# Auto-generated by $0. Used primarily by scripts/external/arc-jazzy-linter.
module: $component
umbrella_header: src/Material$component.h
objc: true
sdk: iphonesimulator
EOL

done

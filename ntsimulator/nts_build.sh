#!/bin/bash

################################################################################
# Copyright 2022 highstreet technologies GmbH
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

source .env
docker compose -f nts-ng-docker-image-build-ubuntu.yaml build --build-arg NTS_BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') --build-arg NTS_BUILD_VERSION=$NTS_BUILD_VERSION nts-ng-base nts-ng-o-ran-ru-fh nts-ng-manager nts-ng-manager nts-ng-x-ran nts-ng-o-ran-fh o-ran-sc-topology-service nts-ng-o-ran-du-rel-18 ntsim-ng-o-du

#/bin/bash
#
# this file was copied from https://github.com/yesnault/docker-phabricator
#
# Download files required to boostrap the mysql database 
#

set -eu
set -o pipefail

# This should match the pinned version of the webapp
PHABRICATOR_VERSION=5aca529980
BASE_URL=https://raw.githubusercontent.com/phacility/phabricator/${PHABRICATOR_VERSION}/resources/sql/

mkdir -p /opt/phabricator/resources/sql/
cd /opt/phabricator/resources/sql/

curl -L -o stopwords.txt ${BASE_URL}/stopwords.txt


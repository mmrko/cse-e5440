#! /bin/sh
#
# Invoked with
#   ./build_firefox.sh COMMIT
# this script does the following:
#   - Clones the mozilla-central repo into a new a
#     directory COMPILATION_HOST_DIR/build_REVISION_COMMIT
#     - Uses a default directory for mozilla-central if $MAIN_FENNEC_REPO is not set
#   - Launches compilation of the COMMIT
#     - Uses a default location for the mozconfig file if $MOZCONFIG is not set
#   - Launches apk packaging of the COMMIT
#

CURRENT_DIR=$PWD
COMMIT=$1
MAIN_FENNEC_REPO=${MAIN_FENNEC_REPO:-$PWD/mozilla-central}
MOZCONFIG=${MOZCONFIG:-$PWD/.mozconfig}
BUILDS_DIR="$PWD/builds"

export MOZCONFIG
export USER "browserapp"

function log {
    echo "$COMMIT: $*"
}

if [[ ! -d $MAIN_FENNEC_REPO ]]; then
  log "Cloning mozilla-central (this will take a while)..."
  hg clone https://hg.mozilla.org/mozilla-central
fi

log "---" `date` "Starting Firefox build script ---"

REV=$(cd $MAIN_FENNEC_REPO; hg log -r $COMMIT --template '{rev}\n')

BUILD_DIR="$BUILDS_DIR/build_${REV}_$COMMIT"

mkdir -p $BUILD_DIR

log "Revision:  $REV"
log "Target Dir: $BUILD_DIR"

log "Checking out commit"
cd $MAIN_FENNEC_REPO && hg checkout $REV
if [ "$?" != "0" ]; then
    log "***Error: Failed to checkout the commit"
    exit 1
fi

#export CFLAGS="-Wno-error=unused-result"
#export CXXFLAGS="-Wno-error=unused-result"

log "Compiling..."
make -f client.mk build
if [ "$?" != "0" ]; then
    log "***Error: Failed to compile"
    exit 1
fi

# For older commits, might have to use 'package' instead of 'fast-package'
make -f client.mk fast-package > ${MAIN_FENNEC_REPO}/package_log 2>&1
if [ "$?" != "0" ]; then
    make -f client.mk package > ${MAIN_FENNEC_REPO}/package_log 2>&1
    if [ "$?" != "0" ]; then
        log "***Error: Failed to package the .apk"
        exit 1
    fi
fi

FENNEC_APK=`ls ${MAIN_FENNEC_REPO}/obj-arm-linux-androideabi/dist/*fennec*.apk`
cp -r $FENNEC_APK $BUILD_DIR
hg checkout tip
cd $CURRENT_DIR

log "Finished commit compilation"
exit 0

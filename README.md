# Setup

1. Install the [Android SDK](http://developer.android.com/sdk/index.html) (scroll to the bottom of the page)
2. Extract the files to `/usr/local/lib/android-sdk`
3. Run `/usr/local/lib/android-sdk/tools/android`
  1. Click _Deselect All_
  2. Make sure the `Android SDK Tools`, `Android SDK Platform-tools` and `Android SDK Build-tools` under `Tools` are selected/installed
  3. Also, select e.g. 4.4.2 (API Level 19) as shown [here](./assets/images/api.png) and click `Install Packages...`
  4. Once installed, exit the Android SDK Manager and run `android avd` to create an Android Virtual Device
  5. Create an AVD with [these settings](./assets/images/avd.png) (feel free to adjust them to your liking)
  6. Test the AVD by clicking `Start...` (you might see an error about missing graphic libs, resort to Google for a remedy)
4. Run [./setup.sh](./setup.sh) which will set up symlinks/shortcuts for the `android` and `adb` commands

# Running the test scripts

The test scripts live under the [tests](./tests) directory. To run the pre-defined test suite, which includes `flickr.com`, `yahoo.com` and `instagram.com`, run:

```bash
./scripts/run_test.sh
```

To run the test for a specific target website, run

```bash
./scripts/run_test.sh "instagram.com"
```

To run the test suite for a specific number of iterations (e.g. 3), run:

```bash
./scripts/run_test.sh "yahoo.com instagram.com" 3
```

If you wish to have the test suite running on an emulator and device a simultaneously, supply the `DEVICE` environment variable (run `adb devices` to get the required device/emulator ID):

```bash
# e.g. profile flickr.com on emulator and instagram.com on the device in parallel:
DEVICE="emulator-xyz" ./scripts/run_test "flickr.com" & DEVICE="foobar-device-id" ./scripts/run_test.sh "instagram.com"
```

See [./scripts/vars](./scripts/vars) for all the available environment variables. For example, to prevent the browser from closing after completing the test suite, set `CLOSE_BROWSER_ON_COMPLETE=0` (useful e.g when profiling network traffic using Firefox WebIDE):

```bash
# e.g. run the test suite for yahoo.com and instagram.com for 3 iterations without closing the browser in between iterations
CLOSE_BROWSER_ON_COMPLETE=0 ./scripts/run_test.sh "yahoo.com instagram.com" 3
```

# Helper scripts

* [./scripts/install_browser.sh](./scripts/install_browser.sh): install Firefox 46.0 to the device/emulator
* [./scripts/toggle_cache_config.sh](./scripts/toggle_cache_config.sh): toggle Firefox cache config settings
* [./scripts/open_firefox_config.sh](./scripts/open_firefox_config.sh): open Firefox config page (`about:config`). HTTP2 support can be toggle using the `network.http.spdy.enabled.http2` flag
* [./scripts/build_firefox.sh](./scripts/build_firefox.sh): if you're crazy enough you can use this to build Firefox from source (takes a ton of time, ~30min)

# Project structure

* [./assets](./assets): static assets
* [./builds](./builds): `i386` and `arm` builds for Firefox to use with the emulator/device
* [./data](./data): power/network traffic measurement data
* [./doc](./doc): assignment & poster presentation documents
* [./scripts](./scripts): scripts for running the test suite & R scripts for dataviz
* [./tests](./tests): test run scripts for each target website (executed by [./scripts/run_test.sh](./scripts/run_test.sh))

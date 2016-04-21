# Setup

1. Install the [Android SDK](http://developer.android.com/sdk/index.html) (scroll to the bottom of the page)
2. Extract the files to `/usr/local/lib/android-sdk`
3. Run `/usr/local/lib/android-sdk/tools/android`
  1. Click _Deselect All_
  2. Make sure the `Android SDK Tools`, `Android SDK Platform-tools` and `Android SDK Build-tools` under `Tools` are selected/installed
  3. Also, select 4.4.2 (API Level 19) as shown [here](./assets/images/api.png) and click `Install Packages...`
  4. Once installed, exit the Android SDK Manager and run `android avd` to create an Android Virtual Device
  5. Create an AVD with [these settings](./assets/images/avd.png) (feel free to tinker with the settings as per your liking)
  6. Test the AVD by clicking `Start...` (you might see an error about missing graphic libs, resort to Google for a remedy)
4. Run [./setup.sh](./setup.sh) to set up symlinks/shortcuts for the `android`, `emulator` and `adb` commands


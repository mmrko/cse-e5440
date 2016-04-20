# Setup

1. Install [Android Studio](http://developer.android.com/sdk/index.html)
2. Run [./setup.sh](./setup.sh) (sets up symlinks for `studio`, `android` and `adb`)
3. Run `android`
  1. Click _Deselect All_
  2. Select 4.4.2 (API Level 19) as shown [here](./assets/images/api.png) and click `Install Packages...`
  3. Once installed, exit the Android SDK Manager and run `android avd` to create an Android Virtual Device
  4. Create an AVD with [these settings](./assets/images/avd.png) (feel free to tinker with the settings as per your liking)
  5. Test the AVD by clicking `Start...` (you might see an error about missing graphic libs, resort to Google for a remedy)
4. Run `studio` to open Android Studio

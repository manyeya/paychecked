import 'package:device_apps/device_apps.dart';

class AppCaller {
  Future<List<Application>> callApps() async {
    List<Application> apps = await DeviceApps.getInstalledApplications(
      includeAppIcons: true,
      includeSystemApps: true,
      onlyAppsWithLaunchIntent: true,
    );
    print(apps);
    return apps;
  }

  Future<bool> isInstalled(String packageName) async {
    bool isInstalled = await DeviceApps.isAppInstalled(packageName);
    return isInstalled;
  }

  void openApp(String packageName) {
    DeviceApps.openApp(packageName);
  }
}

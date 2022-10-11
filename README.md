## Steps to Reproduce

1. go to https://dartpad.dev/?id=81f9a45be321e427a8f5da18d744b71c&channel=master on desktop chrome
2. Click `run`
3. Flutter image should be seen **Transparent**
4. Open browser developer tools
5. Change User Agent to Android (Network Conditions -> Uncheck `Use browser default`, select `chrome - Android browser`)
6. Reload page
7. Click `run`

**Expected results:**
8. Flutter image is **Transparent**

**Actual results:**
8. Flutter image is completely **Opaque**

<details>
<summary>Code sample</summary>

```dart
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png',
      opacity: const AlwaysStoppedAnimation(0.1),
    );
  }
}
```

</details>

<details>
`flutter doctor -v` 

```
[✓] Flutter (Channel master, 3.5.0-3.0.pre.1, on Ubuntu 22.04.1 LTS 5.15.0-48-generic, locale en_US.UTF-8)
    • Flutter version 3.5.0-3.0.pre.1 on channel master at /home/bri/sdk/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision 900f540a5e (7 hours ago), 2022-10-06 19:58:08 -0400
    • Engine revision 7059da35c5
    • Dart version 2.19.0 (build 2.19.0-285.0.dev)
    • DevTools version 2.18.0

[✓] Android toolchain - develop for Android devices (Android SDK version 32.1.0-rc1)
    • Android SDK at /home/bri/Android/Sdk
    • Platform android-32, build-tools 32.1.0-rc1
    • Java binary at: /home/bri/app/android-studio/jre/bin/java
    • Java version Java(TM) SE Runtime Environment (build 17.0.1+12-LTS-39)
    • All Android licenses accepted.

[✓] Chrome - develop for the web
    • Chrome at google-chrome

[✓] Linux toolchain - develop for Linux desktop
    • Ubuntu clang version 14.0.0-1ubuntu1
    • cmake version 3.22.1
    • ninja version 1.10.1
    • pkg-config version 0.29.2

[✓] Android Studio (version 2021.2)
    • Android Studio at /home/bri/app/android-studio
    • Flutter plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/9212-flutter
    • Dart plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/6351-dart
    • Java version Java(TM) SE Runtime Environment (build 17.0.1+12-LTS-39)

[✓] VS Code (version 1.71.2)
    • VS Code at /usr/share/code
    • Flutter extension version 3.50.0

[✓] Connected device (2 available)
    • Linux (desktop) • linux  • linux-x64      • Ubuntu 22.04.1 LTS 5.15.0-48-generic
    • Chrome (web)    • chrome • web-javascript • Google Chrome 105.0.5195.125

[✓] HTTP Host Availability
    • All required HTTP hosts are available

• No issues found!
```

</details>

# physical_diagonal

Detects physical screen diagonal in inches.
Physical diagonal of the screen helps to optimize design for Tablets/bigger screens.
Calculation relies on system pixel density information, so it might be slightly inaccurate fo Android devices (about 5%)


# Use this package as a library

## 1. Add this to your package's pubspec.yaml file:

```
dependencies:
  flutter_full_pdf_viewer: ^1.0.3
```


### 2. Install it

You can install packages from the command line:

with Flutter:

```
$ flutter packages get
```

Alternatively, your editor might support pub get or ```flutter packages get```. Check the docs for your editor to learn more.


### 3. Import it

In your Dart code, use:

```
import 'package:physical_diagonal/physical_diagonal.dart';
```


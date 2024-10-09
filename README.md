# Flutter Platform KMP

A simple Flutter app showcasing a Kotlin Multiplatform (KMP) library that shares business logic
across platforms. This library retrieves the operating system and version information, enabling
seamless integration into your Flutter applications.

With Kotlin Multiplatform (KMP), you can write your platform-specific code just once in Kotlin and
share it between both iOS and Android. This means you can handle the business logic for both
platforms in a single codebase, saving time and reducing duplication.

In Flutter, you can easily invoke this shared Kotlin logic using platform channels. This allows your
Flutter app to interact with the native code on iOS and Android, all while keeping the shared logic
in one place.

By using KMP, you make your development process simpler and more efficient, ensuring that both
platforms behave consistently with minimal effort.

This project is a simple example to showcase how KMP can be used in a Flutter app. It demonstrates
how to retrieve platform-specific information like the operating system and version, highlighting
how easy and efficient it is to share code between iOS and Android.
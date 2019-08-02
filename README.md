# Flutter_Application_Lifecycle
App Lifecycle of flutter app

The state in which the application can be described is the enum class AppLifecycleState.
The observable lifecycle events are:
inactive — The application is in an inactive state and is not receiving user input. This event only works on iOS, as there is no equivalent event to map to on Android
paused — The application is not currently visible to the user, not responding to user input, and running in the background. This is equivalent to onPause() in Android
resumed — The application is visible and responding to user input. This is equivalent to onPostResume() in Android
suspending — The application is suspended momentarily. This is equivalent to onStop in Android; it is not triggered on iOS as there is no equivalent event to map to on iOS


Reference : https://api.flutter.dev/flutter/dart-ui/AppLifecycleState-class.html
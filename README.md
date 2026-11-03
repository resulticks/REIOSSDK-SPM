# REIOSSDK-SPM

Swift Package Manager binary distribution for **REIOSSDK**.

## Minimum Requirements
- **iOS**: 15.0+
- **Xcode**: 16.0+
- **Swift**: 6.0+

## Integration via Swift Package Manager

### In Xcode
1. Open your iOS project in Xcode.
2. Select **File** → **Add Package Dependencies...**
3. Enter the repository URL:
   ```text
   https://github.com/ResulticksInc/REIOSSDK-SPM.git
   ```
4. Set **Dependency Rule** to:
   - `Up to Next Major`: `1.0.0`
5. Select target memberships:
   - Check **Main App Target**
   - (Optional) Check **NotificationServiceExtension**
   - (Optional) Check **NotificationContentExtension**
6. Click **Add Package**.

### In `Package.swift`
```swift
dependencies: [
    .package(url: "https://github.com/ResulticksInc/REIOSSDK-SPM.git", from: "1.0.0")
],
targets: [
    .target(
        name: "YourAppTarget",
        dependencies: [
            .product(name: "REIOSSDK", package: "REIOSSDK-SPM")
        ]
    )
]
```

## Quick Start

```swift
import UIKit
import REIOSSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // Initialize the SDK
        REIOSSDK.shared.initSDK(
            appId: "YOUR_APPLICATION_KEY",
            debug: true,
            enableAutoScreenTracking: true
        )
        return true
    }
}
```

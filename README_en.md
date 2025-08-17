# MinecraftPlayerRenderer
Easily render Minecraft player models in SwiftUI.
***
| [简体中文](/README.md) | English |
***

## Usage
### Install Dependencies
1. In Xcode, click "File" in the menu bar and then click "Add Package Dependencies...".
2. In the input box at the top right, enter `https://github.com/VentiStudios/MinecraftPlayerRenderer` (the address of this project).
3. Click "Add Package" in the bottom right.

### SceneKit
You can use the static method from `PlayerScene` to create an SCNScene:

```swift
let scene = PlayerScene.makeScene(
    data: Data(base64Encoded: "......"),
    cameraPreset: .default,
    isSlim: true
)
```

**Method Signature**
```swift
public static func makeScene(data: Data?, cameraPreset: CameraPreset, isSlim: Bool) -> SCNScene
```

---

### SwiftUI

Render the player model directly in SwiftUI:

```swift
PlayerView(
    data: Data(base64Encoded: "......"),
    cameraPreset: .default,
    isSlim: true
)
```

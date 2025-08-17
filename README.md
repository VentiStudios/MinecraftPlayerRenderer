# MinecraftPlayerRenderer
便捷地在 SwiftUI 中渲染 Minecraft 玩家模型。
***
| 简体中文 | [English](/README_en.md) |
***

## 使用
### 安装依赖
1. 在 Xcode 中点击菜单栏上的“文件”，点击“Add Package Dependencies...”。
2. 在右上角的输入框中输入 `https://github.com/VentiStudios/MinecraftPlayerRenderer`（本项目的地址）。
3. 点击右下角的“Add Package”。

### SceneKit
你可以使用 `PlayerScene` 的静态方法创建 SCNScene：  
You can use the static method from `PlayerScene` to create an SCNScene:

```swift
let scene = PlayerScene.makeScene(
    data: Data(base64Encoded: "......"),
    cameraPreset: .default,
    isSlim: true
)
```

**方法签名**
```swift
public static func makeScene(data: Data?, cameraPreset: CameraPreset, isSlim: Bool) -> SCNScene
```

---

### SwiftUI

直接在 SwiftUI 中渲染玩家模型：

```swift
PlayerView(
    data: Data(base64Encoded: "......"),
    cameraPreset: .default,
    isSlim: true
)
```

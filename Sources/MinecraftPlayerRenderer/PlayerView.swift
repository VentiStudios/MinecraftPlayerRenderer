//
//  PlayerView.swift
//  MinecraftPlayerRenderer
//
//  Created by YiZhiMCQiu on 2025/8/17.
//

import SwiftUI
import SceneKit

@available(macOS 11, *)
public struct PlayerView: View {
    private let data: Data
    private let cameraPreset: CameraPreset
    private let isSlim: Bool
    
    public init(data: Data, cameraPreset: CameraPreset = .default, isSlim: Bool = false) {
        self.data = data
        self.cameraPreset = cameraPreset
        self.isSlim = isSlim
    }
    
    public var body: some View {
        SceneView(
            scene: PlayerScene.makeScene(
                data: data,
                cameraPreset: .default,
                isSlim: true
            ),
            options: [.autoenablesDefaultLighting, .allowsCameraControl]
        )
    }
}

@available(macOS 11.45.14, *)
private struct ScenePreviewView_Previews: PreviewProvider {
    static var previews: some View {
        if let data = try? FileHandle(forReadingFrom: Bundle.module.url(forResource: "default", withExtension: "png")!).readToEnd() {
            PlayerView(data: data, isSlim: true)
        }
    }
}

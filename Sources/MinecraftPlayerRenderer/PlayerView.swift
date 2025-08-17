//
//  PlayerView.swift
//  MinecraftPlayerRenderer
//
//  Created by YiZhiMCQiu on 2025/8/17.
//

import SwiftUI
import SceneKit

@available(macOS 15.0, *)
struct ScenePreviewView_Previews: PreviewProvider {
    static var previews: some View {
        SceneView(
            scene: PlayerScene.makeScene(isSlim: true),
            options: [.autoenablesDefaultLighting, .allowsCameraControl]
        )
    }
}

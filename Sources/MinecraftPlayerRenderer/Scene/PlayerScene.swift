//
//  PlayerScene.swift
//  MinecraftPlayerRenderer
//
//  Created by YiZhiMCQiu on 2025/8/17.
//

import SceneKit
import SwiftUI

public class PlayerScene {
    public static func makeScene(data: Data, isSlim: Bool = false) -> SCNScene {
        let scene = SCNScene()
        
        guard let modelURL = Bundle.module.url(forResource: "player_\(isSlim ? "slim" : "wide")", withExtension: "scn"),
              let modelScene = try? SCNScene(url: modelURL, options: nil) else {
            print("Failed to load model scene")
            return scene
        }
        
        if let modelNode = modelScene.rootNode.childNodes.first {
            scene.rootNode.addChildNode(modelNode)
            
            if let geometry = modelNode.geometry {
                let material = SCNMaterial()
                if let image = NSImage(data: data) {
                    material.diffuse.contents = image
                    material.diffuse.magnificationFilter = .nearest
                    material.diffuse.minificationFilter = .nearest
                    material.diffuse.mipFilter = .none
                } else {
                    print("Failed to load texture image")
                }
                geometry.materials = [material]
            }
        }
        
        let camera = SCNCamera()
        let cameraNode = SCNNode()
        cameraNode.camera = camera
        cameraNode.position = SCNVector3(2, 1.5, -2.5)
        cameraNode.look(at: SCNVector3(0, 1, 0))
        scene.rootNode.addChildNode(cameraNode)
        
        return scene
    }
}

//
//  CameraPreset.swift
//  MinecraftPlayerRenderer
//
//  Created by YiZhiMCQiu on 2025/8/17.
//

import SceneKit

public final class CameraPreset: Sendable {
    public static let `default`: CameraPreset = .init(position: SCNVector3(2, 1.5, -2.5))
    public static let back: CameraPreset = .init(position: SCNVector3(0, 2, 3))
    public static let front: CameraPreset = .init(position: SCNVector3(0, 2, -3))
    
    internal let position: SCNVector3
    
    public init(position: SCNVector3) {
        self.position = position
    }
}

//
//  BGClass.swift
//  Jack-The-Giant-iOS
//
//  Created by Árthur Ken Aramaki Mota on 28/06/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import Foundation
import SpriteKit

class BGClass: SKSpriteNode {
    
    func moveBG(camera: SKCameraNode) {
        if self.position.y - self.size.height - 10 > camera.position.y {
            self.position.y -= self.size.height * 3
        }
        
    }
    
}

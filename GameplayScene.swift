//
//  GameplayScene.swift
//  Jack-The-Giant-iOS
//
//  Created by Árthur Ken Aramaki Mota on 19/06/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import SpriteKit

class GameplayScene: SKScene {
    
    var mainCamera: SKCameraNode?
    
    var player: Player?
    
    var canMove = false
    var moveLeft = false
    
    var center: CGFloat?
    
    override func didMove(to view: SKView) {
        initializeVariables()
        
    
    }
    
    override func update(_ currentTime: TimeInterval) {
        moveCamera()
        managePlayer()
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self)
            
            if location.x > center! {
                moveLeft = false
                player?.animatePlayer(moveLeft: moveLeft)
            } else {
                moveLeft = true
                player?.animatePlayer(moveLeft: moveLeft)
            }
        }
        
        canMove = true
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        canMove = false
        player?.stopPlayerAnimation()
    }

    func initializeVariables() {
        center = (self.scene?.size.width)! / (self.scene?.size.height)!
        
        player = self.childNode(withName: "Player") as? Player!
        player?.initializePlayerAndAnimations()
        
        mainCamera = self.childNode(withName: "Main Camera") as? SKCameraNode!
        
    }
    
    func managePlayer() {
        if canMove {
            player?.movePlayer(moveLeft: moveLeft)
        }
    }
    
    func moveCamera() {
        self.mainCamera?.position.y -= 3
    }
    
}

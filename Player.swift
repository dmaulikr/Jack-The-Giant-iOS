//
//  Player.swift
//  Jack-The-Giant-iOS
//
//  Created by Árthur Ken Aramaki Mota on 19/06/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
    
    private var texttureAtlas = SKTextureAtlas()
    private var playerAnimation = [SKTexture]()
    private var animatePlayerAction = SKAction()
    
    
    func initializePlayerAndAnimations() {
        
        texttureAtlas = SKTextureAtlas(named: "Player.atlas")
        
        for i in 2...texttureAtlas.textureNames.count {
            let name = "Player \(i)"
            playerAnimation.append(SKTexture(imageNamed: name))
            
        }
        
        animatePlayerAction = SKAction.animate(with: playerAnimation, timePerFrame: 0.08, resize: true, restore: false)
    }
    
    
    func animatePlayer(moveLeft: Bool) {
        
        if moveLeft {
            self.xScale = -fabs(self.xScale)
        } else {
            self.xScale = fabs(self.xScale)
        }
        
        self.run(SKAction.repeatForever(animatePlayerAction), withKey: "Animate")
    }
    
    func stopPlayerAnimation(){
        self.removeAction(forKey: "Animate")
        self.texture = SKTexture(imageNamed: "Player 1")
        self.size = (self.texture?.size())!
    }
    
    
    func movePlayer(moveLeft: Bool) {
        
        if moveLeft {
            self.position.x -= 7
            
        } else {
            self.position.x += 7
        }
        
    }
    
}

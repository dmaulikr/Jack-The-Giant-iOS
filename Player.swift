//
//  Player.swift
//  Jack-The-Giant-iOS
//
//  Created by Árthur Ken Aramaki Mota on 19/06/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
    
    func movePlayer(moveLeft: Bool) {
        
        if moveLeft {
            self.position.x = self.position.x - 7
        } else {
            self.position.x = self.position.x + 7
        }
        
    }
    
}

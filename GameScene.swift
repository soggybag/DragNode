//
//  GameScene.swift
//  Drag and Drop
//
//  Created by mitchell hudson on 2/18/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//


import UIKit
import SpriteKit

class GameScene: SKScene {
    
    var background = SKSpriteNode()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        background = SKSpriteNode(imageNamed: "background")
        background.size = size
        background.anchorPoint = CGPointZero
        background.position.x = 0 // size.width / 2
        background.position.y = 0 // size.height / 2
        background.zPosition = -1
        addChild(background)
        
        // These Sprites do not require the code above. The DragNode Class is draggable.
        let drag = DragNode(color: UIColor.blackColor(), size: CGSize(width: 32, height: 32))
        drag.position.x = 100
        drag.position.y = 300
        addChild(drag)
        

        // Or Initialize a drag node with a Texture.
        let a = DragNode(texture: SKTexture(imageNamed: "n"))
        a.position.x = 200
        a.position.y = 200
        addChild(a)
    }
}

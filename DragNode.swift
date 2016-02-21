//
//  DragNode.swift
//  Drag and Drop
//
//  Created by mitchell hudson on 2/20/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit
import SpriteKit

class DragNode: SKSpriteNode {
    
    var isDragging = false
    
    func endDrag() {
        isDragging = false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        isDragging = true
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        endDrag()
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        endDrag()
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first
        guard let location = touch?.locationInNode(self.parent!) else {
            return
        }
        
        position = location
    }
    
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        
        userInteractionEnabled = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

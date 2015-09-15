//
//  GameScene.swift
//  Crazy Caleb
//
//  Created by Cody Mace on 9/15/15.
//  Copyright (c) 2015 Cody Mace. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var floor: Int = 0
    var caleb: SKNode = SKNode()
    override func didMoveToView(view: SKView) {
        self.floor = 0
        self.caleb = (self.scene?.childNodeWithName("Caleb"))!
        let upSwipe = UISwipeGestureRecognizer(target: self, action: Selector("swipeUp:"))
        upSwipe.direction = .Up
        let downSwipe = UISwipeGestureRecognizer(target: self, action: Selector("swipeDown:"))
        downSwipe.direction = .Down
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("swipeRight:"))
        rightSwipe.direction = .Right
        self.view!.addGestureRecognizer(upSwipe)
        self.view!.addGestureRecognizer(downSwipe)
        self.view!.addGestureRecognizer(rightSwipe)
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
    }

    func swipeUp(swipe: UISwipeGestureRecognizer) {
        if (self.floor != 2) {
            self.floor += 1
            self.caleb .runAction(SKAction.moveBy(CGVector(dx: 0, dy: self.frame.size.height/3), duration: 0.2))
        }
    }
    func swipeDown(swipe: UISwipeGestureRecognizer) {
        if (self.floor != 0) {
            self.floor -= 1
            self.caleb .runAction(SKAction.moveBy(CGVector(dx: 0, dy: -self.frame.size.height/3), duration: 0.2))
        }
    }
    func swipeRight(swipe: UISwipeGestureRecognizer) {
        print("shoot!")
    }

    override func update(currentTime: CFTimeInterval) {
    }
}

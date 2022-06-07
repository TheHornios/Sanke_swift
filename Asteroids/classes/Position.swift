//
//  Position.swift
//  Asteroids
//
//  Created by Ronri on 6/6/22.
//

import Foundation


class Position {
    private var positionX:Double
    private var positionY:Double
    
    init( posX:Double, posY:Double ) {
        self.positionX = posX
        self.positionY = posY
    }
    
    public func getPositionX() -> Double{
        return self.positionX
    }
    
    public func getPositionY() -> Double{
        return self.positionY
    }
    
    public func setPositionX( posX:Double ){
        self.positionX = posX
    }
    public func setPositionY( posY:Double ){
        self.positionY = posY
    }
    public func setPosition( posX:Double, posY:Double ){
        self.positionY = posY
        self.positionX = posX
    }
    public func getPosition() -> ( Double, Double ){
        return ( self.positionX, self.positionY )
    }
}

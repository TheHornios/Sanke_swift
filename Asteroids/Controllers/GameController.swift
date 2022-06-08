//
//  GameController.swift
//  Asteroids
//
//  Created by Ronri on 6/6/22.
//

import SwiftUI

class GameController {
    private var tablero:Tablero = Tablero();
    
    init() {
        
    }
    
    
    
    public func update( size: CGSize ){
        tablero.update( size: size )
    }
    
    public func draw( context: GraphicsContext, size: CGSize ){
        tablero.draw( context:context ,size: size )
        
        /*
         // 1
       let clockSize = min(size.width, size.height) * 0.9
       // 2
       let centerOffset = min(size.width, size.height) * 0.05
       // 3
       let clockCenter = min(size.width, size.height) / 2.0
       // 4
       let frameRect = CGRect(
         x: centerOffset,
         y: centerOffset,
         width: clockSize,
         height: clockSize)
        
        context.withCGContext { cgContext in
          // 2
            cgContext.setStrokeColor(UIColor.white.cgColor)
          // 3
          cgContext.setLineWidth(2.0)
          // 4
          cgContext.addEllipse(in: frameRect)
          // 5
          cgContext.drawPath(using: .fillStroke)
            cgContext.strokePath()
            cgContext.fillPath()
              // 5
            cgContext.restoreGState()
        }
        //cgContext.fillPath()
          // 5
       // cgContext.restoreGState()
         
         */
        
    }
    
   
    
}

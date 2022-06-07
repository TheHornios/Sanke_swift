//
//  Tablero.swift
//  Asteroids
//
//  Created by Ronri on 6/6/22.
//


import SwiftUI

class Tablero {
    private var miArray = [[Rectangle]]()
    private var tamnyoCelda:Int = 10
    
    init() {
        
    }
    
    public func update( size: CGSize ){
        self.crearTablero( size: size )
    }
    
    public func draw( context: GraphicsContext, size: CGSize ){
        
        
    }
    
    private func crearTablero( size: CGSize ){
        
        miArray = [[Rectangle]]()
        var counter = 0
        
        while Double( counter ) <= size.width {
            
            var myArray = [Rectangle]()
            var counterHeigt = 0
            
            while Double( counterHeigt ) <= size.height {
                
                let rectangulo = Rectangle(
                    ancho: Double( self.tamnyoCelda ),
                    alto: Double( self.tamnyoCelda ),
                    position: Position(
                        posX: Double( counter ),
                        posY: Double( counterHeigt )
                    )
                )
                
                myArray.append( rectangulo  )
                counterHeigt += 10
                
            }
            
            miArray.append( myArray )
            counter += 10
        }
        
        
        
        
    }
    
   
    
}

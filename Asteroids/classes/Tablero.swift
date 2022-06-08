//
//  Tablero.swift
//  Asteroids
//
//  Created by Ronri on 6/6/22.
//


import SwiftUI

class Tablero {
    private var arrayRectangulos = [[Rectangle]]()
    private var tamnyoCelda:Int = 30
    private var isTableroCreated:Bool = false
    
    init() {
        self.tamnyoCelda = Int( UIScreen.main.bounds.width / 14  )
    }
    
    public func update( size: CGSize ){
        if( !self.isTableroCreated ){
            self.crearTablero( size: size )
            self.isTableroCreated = true
        }
    }
    
    public func draw( context: GraphicsContext, size: CGSize ){
        
        for rectangleX in arrayRectangulos {
            for rectangle in rectangleX{
                rectangle.drawRectangle(context: context)
            }
        }
        
    }
    
    private func crearTablero( size: CGSize ){
        
        arrayRectangulos = [[Rectangle]]()
        var counter = 0
        
        while Double( counter ) <= Double( Int(size.width) - self.tamnyoCelda) {
            
            var myArray = [Rectangle]()
            var counterHeigt = 0
            
            while Double( Int( counterHeigt ) + self.tamnyoCelda ) <= size.height  {
                
                let rectangulo = Rectangle(
                    ancho: Double( self.tamnyoCelda ),
                    alto: Double( self.tamnyoCelda ),
                    position: Position(
                        posX: Double( counter ),
                        posY: Double( counterHeigt )
                    )
                )
                
                myArray.append( rectangulo  )
                counterHeigt += self.tamnyoCelda
                
            }
            
            arrayRectangulos.append( myArray )
            counter += self.tamnyoCelda
        }
        
        
    }
    
   
    
}

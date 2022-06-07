//
//  Position.swift
//  Asteroids
//
//  Created by Ronri on 6/6/22.
//

import Foundation


class Rectangle {
    private var ancho:Double
    private var alto:Double
    private var posicion:Position
  
    
    init( ancho:Double, alto:Double, position:Position ) {
        self.ancho = ancho
        self.alto = alto
        self.posicion = position
    }
    
    public func getPosition() -> Position{
        return self.posicion
    }
    
    public func getAlto() -> Double{
        return self.alto
    }
    
    public func getAncho() -> Double{
        return self.ancho
    }
    
    public func setPosition( position:Position ){
        self.posicion = position
    }
    public func setPositioAncho( ancho:Double ){
        self.ancho = ancho
    }
    public func setPositioAlto( alto:Double ){
        self.alto = alto
    }
    
    public func setSize( ancho:Double, alto:Double, position:Position  ){
        self.ancho = ancho
        self.alto = alto
        self.posicion = position
    }
    
    public func getPosition() -> ( Double, Double, position:Position  ){
        return ( self.ancho, self.alto, self.posicion )
    }
}

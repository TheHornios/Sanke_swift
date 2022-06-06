//
//  Clase: viewController.swift
//  Proyecto: Asteroids
//  Funcion: Esta clase es la encargada de cambiar entre ventanas de la aplicacion
//  Created by Ronri on 1/6/22.
//

import Foundation
import SwiftUI

struct ViewController{
    var vistaEjecutar: String
    
    init( vistaEjecutar: String){
        self.vistaEjecutar = vistaEjecutar
    }
    
    mutating func setVistaEjecutar( text: String ){
        self.vistaEjecutar = text
    }
    
    func view() -> some View {
        
        return NavigationView{
            
            if( self.vistaEjecutar == "inicio" ){
                HomeView().background( Color(red: 0.338, green: 0.543, blue: 0.204) )
            }
            
            
            if( self.vistaEjecutar == "juego" ){
                JuegoInicio().background( Color(red: 0.338, green: 0.543, blue: 0.204) )
            }
            
        }
    
        
        
        

    }
    
}

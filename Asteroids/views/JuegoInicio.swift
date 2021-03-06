//
//  JuegoInicio.swift
//  Asteroids
//
//  Created by Ronri on 2/6/22.
//

import Foundation
import SwiftUI

struct JuegoInicio: View {
    var gameController:GameController = GameController()
    
    var body: some View {
        VStack{
            Text("hols")
            
            TimelineView(.animation) { timeline in
                Canvas { context, size in
                    
                    var now = timeline.date.timeIntervalSinceReferenceDate
                    gameController.update( size: size )
                    gameController.draw( context: context, size: size )
                    
                }
                .border(Color.blue)
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: .infinity)
            }
    
           
        }
    }
}


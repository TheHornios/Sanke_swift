//
//  File.swift
//  Asteroids
//
//  Created by Ronri on 2/6/22.
//

import Foundation
import SwiftUI

struct BotonAzul: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0.292, green: 0.459, blue: 0.172))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

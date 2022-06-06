//
//  HomeView.swift
//  Funcon: Es la home de la aplicacion
//
//  Created by Ronri on 1/6/22.
//

import SwiftUI


struct HomeView: View {
    @State var isLinkActive = false
    var body: some View {
        VStack{
            
            Spacer()
            Text("Snake")
                .font(.custom("SnakeGameDemoRegular", size: 120))
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)
            
            Text("by ronri")
                .font(.custom("SnakeGameDemoRegular", size: 45))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .padding([.leading], 130.0 )
            
            Spacer()
            NavigationLink(
                destination: JuegoInicio()
                    .background( Color(red: 0.338, green: 0.543, blue: 0.204) )
                    .navigationBarBackButtonHidden(true),
                isActive: $isLinkActive){
                    Button("Jugar") {
                        self.isLinkActive = true
                    }.buttonStyle(BotonAzul())
                    .font(.custom("SnakeGameDemoRegular",size: 45))
            }
            Spacer()

        }.frame(
            maxWidth: .infinity,
            maxHeight:  .infinity
        )
    }
}


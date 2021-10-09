//
//  ContentView.swift
//  AgricultureChickenWater
//
//  Created by PMStudent on 10/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var offsetX: CGFloat = 0.0
    @State var direction = 1
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            
            Image("crops")
                .resizable()
                .frame(width: 450.0, height: 400.0)
                .offset(y: 245)
            
            
            
            ZStack {
                Image("flyingChicken\(direction)")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
            }
            .offset(x: offsetX)
            
            
            
            
            HStack {
                Button(action: {
                    offsetX -= 10;
                    direction = 2
                }) {
                    Text("")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 200, height: 900)
                }
                
                Spacer()
                
                Button(action: {
                    offsetX += 10;
                    direction = 1
                }) {
                    Text("")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 200, height: 900)
                }
            }
            .foregroundColor(.red)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

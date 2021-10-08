//
//  ContentView.swift
//  AgricultureChickenWater
//
//  Created by PMStudent on 10/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var offsetX: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            
            Image("crops")
                .resizable()
                .frame(width: 450.0, height: 400.0)
                .offset(y: 245)
            
            
            
            ZStack {
                Image("flyingChicken")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
            }
            .offset(x: offsetX)
            
            
            
            
            HStack {
                Button(action: {
                    offsetX -= 10
                }) {
                    Text("<")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(5)
                        .padding(.horizontal, 7)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                
                Spacer()
                
                Button(action: {
                    offsetX += 10
                }) {
                    Text(">")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(5)
                        .padding(.horizontal, 7)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
            .foregroundColor(.red)
            .padding(.horizontal, 60)
            .offset(y: 100)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  OpeningView.swift
//  AgricultureChickenWater
//
//  Created by PMStudent on 10/8/21.
//

import SwiftUI

struct OpeningView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: ContentView()) {
                VStack {
                    Color("BackgroundColor").ignoresSafeArea()
                    
                    Text("You Are Chicken")
                        .font(.title)
                        .bold()
                        .kerning(1.0)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .padding(.top, 100)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 400.0, height: 350.0)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        Image("angryChicken")
                            .resizable()
                            .frame(width: 700.0, height: 400.0)
                    }
                    
                    VStack {
                        Text("you hate farmer")
                            .fontWeight(.bold)
                            .kerning(1.0)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 0.5)
                        
                        Text("farmer likes crops")
                            .fontWeight(.bold)
                            .kerning(1.0)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 0.5)
                        
                        Text("farmer happy when crops happy")
                            .fontWeight(.bold)
                            .kerning(1.0)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 0.5)
                        
                        Text("crops happy when watered")
                            .fontWeight(.bold)
                            .kerning(1.0)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 0.5)
                        
                        Text("you drink crops' water")
                            .fontWeight(.bold)
                            .kerning(1.0)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 0.5)
                            
                        Text("farmer's crops die")
                            .fontWeight(.bold)
                            .kerning(1.0)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 0.5)
                        
                        Text("farmer sad")
                            .fontWeight(.bold)
                            .kerning(1.0)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 0.5)
                        
                        Text("you happy")
                            .fontWeight(.bold)
                            .kerning(1.0)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 0.5)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(.bottom)
                    
                    Text("Begin Mission")
                        .padding()
                        .font(.system(size: 25, weight: .semibold))
                        .frame(width: 250, height: 50)
                        .background(Color.white)
                        .foregroundColor(.red)
                        .cornerRadius(12.0)
                    
                }
                .foregroundColor(.black)
                .padding(.bottom, 200)
                .background(Color("BackgroundColor"))
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}

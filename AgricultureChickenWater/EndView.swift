//
//  AgricultureView.swift
//  AgricultureChickenWater
//
//  Created by PMStudent on 10/8/21.

import SwiftUI

struct EndView: View {
    
    var text: String
    var crops: Int
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            Text(text)
            
            Image("crops\(crops)")
                .resizable()
                .frame(width: 450.0, height: 400.0)
                .offset(y: 245)
        }
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView(text: "", crops: 1)
    }
}

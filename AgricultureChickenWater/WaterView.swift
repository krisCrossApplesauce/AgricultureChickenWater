//
//  AgricultureView.swift
//  AgricultureChickenWater
//
//  Created by PMStudent on 10/8/21.
//

import SwiftUI

struct WaterView: View {
    
    var offsetY: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 10)
            .foregroundColor(.blue)
        }
        .offset(x: CGFloat(Int.random(in: -200...200)), y: offsetY)
    }
}

struct WaterView_Previews: PreviewProvider {
    static var previews: some View {
        WaterView(offsetY: -445.0)
    }
}

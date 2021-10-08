//
//  ChickenView.swift
//  AgricultureChickenWater
//
//  Created by PMStudent on 10/8/21.
//

import SwiftUI

//struct ChickenView: View {
//    var body: some View {
//
//    }
//}

struct triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        return path
    }
}

struct ChickenView_Previews: PreviewProvider {
    static var previews: some View {
        triangle()
            .stroke(Color.orange, lineWidth: 2)
            .frame(width: 300.0, height: 300.0)
    }
}

//struct triangle: View {
//    var body: some View {
//        ZStack {
//            Rectangle()
//                .frame(width: 1, height: 50)
//            Rectangle()
//                .frame(width: 1, height: 60)
//                .rotationEffect(.degrees(-30))
//                .offset(x: 17, y: -2)
//            Rectangle()
//                .frame(width: 30, height: 1)
//                .offset(x: 15, y: 20)
//
//        }
//    }
//}

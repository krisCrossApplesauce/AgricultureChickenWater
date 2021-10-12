//
//  ContentView.swift
//  AgricultureChickenWater
//
//  Created by PMStudent on 10/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var raindrop1: Bool = false
    @State var offsetX1 = CGFloat(Int.random(in: -200...200))
    @State var offsetY1: CGFloat = -500.0
    
    @State var raindrop2: Bool = false
    @State var offsetX2 = CGFloat(Int.random(in: -200...200))
    @State var offsetY2: CGFloat = -750.0
    
    @State var raindrop3: Bool = false
    @State var offsetX3 = CGFloat(Int.random(in: -200...200))
    @State var offsetY3: CGFloat = -1000.0
    
    @State var raindrop4: Bool = false
    @State var offsetX4 = CGFloat(Int.random(in: -200...200))
    @State var offsetY4: CGFloat = -1250.0
    
    @State var raindrop5: Bool = false
    @State var offsetX5 = CGFloat(Int.random(in: -200...200))
    @State var offsetY5: CGFloat = -1500.0
    
    @State var score = 0
    @State var fails = 0
    @State var haveFailed: Bool = false
    @State var ChOffsetX: CGFloat = 0.0
    @State var direction = 1
    
    var crops: Int
    @State var text: String = ""
    
    
    
    var body: some View {
        NavigationView {
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
                .offset(x: ChOffsetX)
                
                
                ZStack {
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(.blue)
                }
                .offset(x: offsetX1, y: offsetY1)
                
                
                ZStack {
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(.blue)
                }
                .offset(x: offsetX2, y: offsetY2)
                
                
                ZStack {
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(.blue)
                }
                .offset(x: offsetX3, y: offsetY3)
                
                
                ZStack {
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(.blue)
                }
                .offset(x: offsetX4, y: offsetY4)
                
                
                ZStack {
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(.blue)
                }
                .offset(x: offsetX5, y: offsetY5)
                
                
                
                
                
                
                
                HStack {
                    Button(action: {
                        ChOffsetX -= 20
                        direction = 2
                    }) {
                        Text("")
                            .padding(.vertical, 445)
                            .padding(.horizontal, 100)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        ChOffsetX += 20
                        direction = 1
                    }) {
                        Text("")
                            .padding(.vertical, 445)
                            .padding(.horizontal, 100)
                    }
                }
                
                
            }
            .onAppear(perform: { rainfall() })
        }
        
        
        
        func rainfall() {
            Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true) { timer in
                offsetY1 += 2.5
                offsetY2 += 2.5
                offsetY3 += 2.5
                offsetY4 += 2.5
                offsetY5 += 2.5
                if checkLocation() {
                    if haveFailed {
                        fails += 1
                        if raindrop1 {
                            raindrop1 = false
                            haveFailed = false
                            offsetX1 = CGFloat(Int.random(in: -200...200))
                            offsetY1 = -750.0
                            checkEnd()
                        }
                        if raindrop2 {
                            raindrop2 = false
                            haveFailed = false
                            offsetX2 = CGFloat(Int.random(in: -200...200))
                            offsetY2 = -750.0
                            checkEnd()
                        }
                        if raindrop3 {
                            raindrop3 = false
                            haveFailed = false
                            offsetX3 = CGFloat(Int.random(in: -200...200))
                            offsetY3 = -750.0
                            checkEnd()
                        }
                        if raindrop4 {
                            raindrop4 = false
                            haveFailed = false
                            offsetX4 = CGFloat(Int.random(in: -200...200))
                            offsetY4 = -750.0
                            checkEnd()
                        }
                        if raindrop5 {
                            raindrop5 = false
                            haveFailed = false
                            offsetX5 = CGFloat(Int.random(in: -200...200))
                            offsetY5 = -750.0
                            checkEnd()
                        }
                    } else {
                        score += 1
                        if raindrop1 {
                            raindrop1 = false
                            offsetX1 = CGFloat(Int.random(in: -200...200))
                            offsetY1 = -1250.0
                            checkEnd()
                        }
                        if raindrop2 {
                            raindrop2 = false
                            offsetX2 = CGFloat(Int.random(in: -200...200))
                            offsetY2 = -1250.0
                            checkEnd()
                        }
                        if raindrop3 {
                            raindrop3 = false
                            offsetX3 = CGFloat(Int.random(in: -200...200))
                            offsetY3 = -1250.0
                            checkEnd()
                        }
                        if raindrop4 {
                            raindrop4 = false
                            offsetX4 = CGFloat(Int.random(in: -200...200))
                            offsetY4 = -1250.0
                            checkEnd()
                        }
                        if raindrop5 {
                            raindrop5 = false
                            offsetX5 = CGFloat(Int.random(in: -200...200))
                            offsetY5 = -1250.0
                            checkEnd()
                        }
                    }
                }
            }
        }
        
        
        func checkLocation() -> Bool {
            if(ChOffsetX >= (offsetX1 - 50) && ChOffsetX <= (offsetX1 + 50) && offsetY1 == 0.0 ) {
                print("1 same")
                raindrop1 = true
                return true
            } else if(ChOffsetX >= (offsetX2 - 50) && ChOffsetX <= (offsetX2 + 50) && offsetY2 == 0.0 ) {
                print("2 same")
                raindrop2 = true
                return true
            } else if(ChOffsetX >= (offsetX3 - 50) && ChOffsetX <= (offsetX3 + 50) && offsetY3 == 0.0 ) {
                print("3 same")
                raindrop3 = true
                return true
            } else if(ChOffsetX >= (offsetX4 - 50) && ChOffsetX <= (offsetX4 + 50) && offsetY4 == 0.0 ) {
                print("4 same")
                raindrop4 = true
                return true
            } else if(ChOffsetX >= (offsetX5 - 50) && ChOffsetX <= (offsetX5 + 50) && offsetY5 == 0.0 ) {
                print("5 same")
                raindrop5 = true
                return true
            } else if(offsetY1 >= 500.0){
                print("1 lost")
                haveFailed = true
                raindrop1 = true
                return true
            } else if(offsetY2 >= 500.0){
                print("2 lost")
                haveFailed = true
                raindrop2 = true
                return true
            } else if(offsetY3 >= 500.0){
                print("3 lost")
                haveFailed = true
                raindrop3 = true
                return true
            } else if(offsetY4 >= 500.0){
                print("4 lost")
                haveFailed = true
                raindrop4 = true
                return true
            } else if(offsetY5 >= 500.0){
                print("5 lost")
                haveFailed = true
                raindrop5 = true
                return true
            } else {
                return false
            }
        }
        
        
        func checkEnd() -> Bool {
            if((score + fails) == 20) {
                return true
            } else {
                return false
            }
        }
        
        func checkWin() -> Bool {
            if(checkEnd() && fails >= 4) {
                return true
            } else {
                return false
            }
        }
        
    }
    
}


struct End: View {
    var body: some View {
        NavigationLink(destination: EndView()) {
            Text("")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(crops: 1)
    }
}

//
//  ContentView.swift
//  IOS
//
//  Created by student on 15.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    var arrayOfColors : [ColorData] =
    [ColorData.init(colorName: "red", colorValue: Color.red, count:1),
    ColorData.init(colorName: "blue", colorValue: Color.blue, count: 2),
    ColorData.init(colorName: "yello", colorValue: Color.yellow, count: 1),
    ColorData.init(colorName: "green", colorValue: Color.green, count: 1),
    ColorData.init(colorName: "black", colorValue: Color.black, count: 1),
    ColorData.init(colorName: "white", colorValue: Color.white, count: 1),
    ColorData.init(colorName: "gray", colorValue: Color.gray, count: 1)]
    
    mutating func randColor() -> Color {
        let randomColor = Int.random(in: 0..<8)
        arrayOfColors[randomColor].incrementCount()
        return arrayOfColors[randomColor].colorValue
    }
    
    
    var body: some View {
        VStack {
            Circle().fill(Color.red).opacity(0.5)
            Circle().fill(Color.blue).opacity(0.5)
            Circle().fill().opacity(0.5)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

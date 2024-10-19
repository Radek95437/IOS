//
//  ContentView.swift
//  IOS
//
//  Created by student on 15.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var firstColor: Color = Color.red
    @State private var secondColor: Color = Color.blue
    @State private var firstColorData: ColorData = ColorData.init(colorName: "red", colorValue: Color.red, count:0)
    @State private var secondColorData: ColorData = ColorData.init(colorName: "blue", colorValue: Color.blue, count: 0)
    @State private var selectedColor: Color? = nil
    @State private var isColorViewpresented: Bool = false
    
    @State var arrayOfColors : [ColorData] =
    [ColorData.init(colorName: "red", colorValue: Color.red, count:0),
    ColorData.init(colorName: "blue", colorValue: Color.blue, count: 0),
    ColorData.init(colorName: "yello", colorValue: Color.yellow, count: 0),
    ColorData.init(colorName: "green", colorValue: Color.green, count: 0),
    ColorData.init(colorName: "black", colorValue: Color.black, count: 0),
    ColorData.init(colorName: "white", colorValue: Color.white, count: 0),
    ColorData.init(colorName: "gray", colorValue: Color.gray, count: 0)]
    
    private func randColor() -> Color {
        let randomColor = Int.random(in: 0..<arrayOfColors.count)
        arrayOfColors[randomColor].incrementCount()
        return arrayOfColors[randomColor].colorValue
    }
    
    private func navigateToColorView(color: Color){
        selectedColor = color
        isColorViewpresented = true
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Circle()
                        .fill(firstColor)
                        .opacity(0.5)
                        .onTapGesture {
                            navigateToColorView(color: firstColor)
                        }
                    Circle()
                        .fill(secondColor)
                        .opacity(0.5)
                        .onTapGesture {
                            navigateToColorView(color: secondColor)
                        }
                }
                .padding()

                HStack {
                    Button("Losuj kolor 1") {
                        firstColor = randColor()
                        firstColorData = arrayOfColors.first(where: { $0.colorValue == firstColor }) ?? firstColorData
                    }
                    Button("Losuj kolor 2") {
                        secondColor = randColor()
                        secondColorData = arrayOfColors.first(where: { $0.colorValue == secondColor }) ?? secondColorData
                    }
                }
                .padding()

                NavigationLink(destination: StatisticView(colorsData: arrayOfColors)) {
                    Text("Wyświetl statystyki")
                }
            }
            .background(
                NavigationLink(
                    destination: ColorView(color: selectedColor ?? Color.clear),
                    isActive: $isColorViewpresented,
                    label: { EmptyView() }
                )
            )
        }
    }
    }
    


//#Preview {
 //   ContentView()
//}

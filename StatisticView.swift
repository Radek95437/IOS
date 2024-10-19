//
//  StatisticView.swift
//  Projekt_Laboratoria
//
//  Created by student on 19/10/2024.
//

import SwiftUI
//import Chart

struct StatisticView: View {
    var colorsData: [ColorData]
    
    //var body: some View {
        //Chart(colorsData) { colorData in
         //   BarMark(
          //      x: .value("Color", colorData.colorName),
           //     y: .value("Count", colorData.count)
            //)
            //.foregroundStyle(colorData.colorValue)
        //}
        //.padding()
        //Text("dd")
        
    //}
    var body: some View {
            VStack {
                Text("Statystyki kolorów")
                    .font(.headline)
                    .padding()

                HStack {
                    ForEach(colorsData, id: \.id) { colorData in
                        VStack {
                            // Wykres słupkowy
                            Rectangle()
                                .fill(colorData.colorValue)
                                .frame(width: 30, height: CGFloat(colorData.count) * 10) // Wysokość proporcjonalna do count
                            
                            Text(colorData.colorName)
                                .font(.caption)
                        }
                    }
                }
                .padding()
            }
        }}


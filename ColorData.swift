//
//  ColorData.swift
//  Projekt_Laboratoria
//
//  Created by student on 19/10/2024.
//

import Foundation
import SwiftUI

struct ColorData{
    var colorName: String
    var colorValue: Color
    var count: Int
    var id: String = UUID().uuidString
    
    init(colorName: String, colorValue: Color, count: Int) {
        self.colorName = colorName
        self.colorValue = colorValue
        self.count = count
        self.id = UUID().uuidString
    }
    
    mutating func incrementCount(){
        self.count += 1
    }
    
}

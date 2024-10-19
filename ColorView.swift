//
//  ColorView.swift
//  Projekt_Laboratoria
//
//  Created by student on 19/10/2024.
//

import SwiftUI

struct ColorView: View {
    var color: Color
    
    var body: some View {
        Circle().fill(color)
            .opacity(1)
            .ignoresSafeArea()
    }
}

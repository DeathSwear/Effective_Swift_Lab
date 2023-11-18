//
//  ContentView.swift
//  EffectiveSwiftLab13v
//
//  Created by Владислав on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    init() {
            UITabBar.appearance().isHidden = true
        }
    var body: some View {
        Text("Hello, world11!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

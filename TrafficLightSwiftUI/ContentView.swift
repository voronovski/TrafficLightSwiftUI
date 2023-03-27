//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Aleksei Voronovskii on 3/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ColorCircleView(color: .red)
                .padding(.bottom, 12)
            ColorCircleView(color: .yellow)
                .padding(.bottom, 12)
            ColorCircleView(color: .green)
            Spacer()
        }
        .padding(.top, 16)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

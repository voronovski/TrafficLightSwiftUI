//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Aleksei Voronovskii on 3/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    @State private var buttonLabel = "START"
    
    var body: some View {
        VStack {
            ColorCircleView(color: Color.red.opacity(redOpacity))
                .padding(.bottom, 15)
            ColorCircleView(color: Color.yellow.opacity(yellowOpacity))
                .padding(.bottom, 15)
            ColorCircleView(color: Color.green.opacity(greenOpacity))
            Spacer()
            startButton
        }
        .padding(EdgeInsets(top: 40, leading: 16, bottom: 40, trailing: 16))
    }
    
    private var startButton: some View {
        Button(action: changeLight) {
            Text(buttonLabel)
                .font(.title)
                .foregroundColor(Color.white)
                .frame(width: 120, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 6))
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
    }
    
    private func changeLight() {
        buttonLabel = "NEXT"
        if redOpacity == 1 {
            redOpacity = 0.3
            yellowOpacity = 1
        } else if yellowOpacity == 1 {
            yellowOpacity = 0.3
            greenOpacity = 1
        } else if greenOpacity == 1 {
            greenOpacity = 0.3
            redOpacity = 1
        } else {
            redOpacity = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

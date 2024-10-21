//
//  ContentView.swift
//  AnimatedGradientBackground
//
//  Created by PM Student on 10/21/24.
//

import SwiftUI

struct ContentView: View {

    @State private var startAnimation = UnitPoint(x: 2, y: 1)
    @State private var endAnimation = UnitPoint(x: 1, y: 1)
    @State var BackgroundAnimationColors: [Color] = [
        .blue, .black, .brown, .cyan, .clear, .gray, .green, .indigo, .mint,
        .orange, .pink, .purple, .red, .teal, .white, .yellow,
    ]

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: BackgroundAnimationColors),
                startPoint: startAnimation, endPoint: endAnimation
            )
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                withAnimation(.easeInOut(duration: 3.5).repeatForever()) {
                    startAnimation = UnitPoint(x: 1, y: 0)
                    endAnimation = UnitPoint(x: 0, y: 1)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

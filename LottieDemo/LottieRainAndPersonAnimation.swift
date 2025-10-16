//
//  LottieRainAndPersonAnimation.swift
//  LottieDemo
//
//  Created by Paresh Karnawat on 16/10/25.
//

import SwiftUI
import Lottie

struct LottieRainAndPersonAnimation: View {    
    var body: some View {
        VStack {
            LottieView(animation: .named("36240-rain-icon"))
                .styled()
            
            
            LottieView(animation: .named("lf30_editor_xapqxsmy"))
                .styled()
                .offset(y:-100)
        }
        .navigationTitle("Lottie Rain and Person Animation")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
    }
}

#Preview {
    LottieRainAndPersonAnimation()
}

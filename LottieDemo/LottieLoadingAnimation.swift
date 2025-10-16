//
//  LottieLoadingAnimation.swift
//  LottieDemo
//
//  Created by Paresh Karnawat on 16/10/25.
//

import SwiftUI
import Lottie

struct LottieLoadingAnimation: View {
    @State private var playbackMode: LottiePlaybackMode = .playing(.fromProgress(0, toProgress: 1, loopMode: .loop))
    
    var body: some View {
        VStack(spacing: 15){
            LottieView(animation: .named("loading"))
                .styled(loopMode: .loop, playbackMode: playbackMode, size: 200)
            
            LottieView(animation: .named("Loading animation blue"))
                .styled(loopMode: .loop, playbackMode: playbackMode, size: 200)
            
            LottieView(animation: .named("Trail loading"))
                .styled(loopMode: .loop, playbackMode: playbackMode, size: 200)
        }
        .navigationTitle("Lottie Loading Animations")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LottieLoadingAnimation()
}

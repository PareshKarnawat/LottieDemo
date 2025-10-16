//
//  LottieStyleExtension.swift
//  LottieDemo
//
//  Created by Paresh Karnawat on 16/10/25.
//

import SwiftUI
import Lottie

extension LottieView {
    func styled(
        loopMode: LottieLoopMode = .loop,
        playbackMode: LottiePlaybackMode = .playing(.fromProgress(0, toProgress: 1, loopMode: .loop)),
        size: CGFloat = 400
    ) -> some View {
        self
            .playing(.fromProgress(0, toProgress: 1, loopMode: loopMode))
            .playbackMode(playbackMode)
            .frame(width: size, height: size)
    }
}

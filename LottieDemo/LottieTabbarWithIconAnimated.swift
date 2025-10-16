//
//  LottieTabbarWithIconAnimated.swift
//  LottieDemo
//
//  Created by Paresh Karnawat on 16/10/25.
//

import SwiftUI
import Lottie

struct LottieTabbarWithIconAnimated: View {
    @State private var selectedTab: TabItem = .camera
    @State private var playbackMode: LottiePlaybackMode = .playing(.fromProgress(0, toProgress: 1, loopMode: .loop))
    
    var body: some View {
        VStack {
            // Main content area
            Spacer()
            
            // Show selected tab's Lottie animation on screen
            LottieView(animation: .named(selectedTab.rawValue))
                .playing(.fromProgress(0, toProgress: 1, loopMode: .loop))
                .frame(width: 400, height: 400)
            
            Spacer()
            
            // Tab Bar
            HStack {
                ForEach(TabItem.allCases, id: \.self) { tab in
                    VStack(spacing: 4) {
                        LottieView(animation: .named(tab.rawValue))
                            .styled(loopMode: .loop, playbackMode: playbackMode, size: 45)
                        
                        Text(tab.title)
                            .font(.caption)
                            .foregroundColor(selectedTab == tab ? .blue : .gray)
                    }
                    .frame(maxWidth: .infinity)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        selectedTab = tab
                    }
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(.ultraThinMaterial)
            .cornerRadius(25)
            .padding(.horizontal, 16)
        }
        .navigationTitle("Lottie Icons Animation")
        .navigationBarTitleDisplayMode(.inline)
    }
}

enum TabItem: String, CaseIterable {
    case camera = "Camera Pop-Up"
    case food = "Food"
    case meeting = "Book a meeting icon"
    
    var title: String {
        switch self {
        case .camera: return "Camera"
        case .food: return "Food"
        case .meeting: return "Meeting"
        }
    }
}
#Preview {
    LottieTabbarWithIconAnimated()
}

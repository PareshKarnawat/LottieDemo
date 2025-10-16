//
//  ContentView.swift
//  LottieDemo
//
//  Created by Paresh Karnawat on 15/10/25.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationStack{
            List {
                NavigationLink("Loading Animation"){
                    LottieLoadingAnimation()
                }
                NavigationLink("Rain and Person Animation"){
                    LottieRainAndPersonAnimation()
                }
                NavigationLink("Menu Icons Animation"){
                    LottieTabbarWithIconAnimated()
                }
            }
            .navigationTitle("Lottie Animations")
            .navigationBarTitleDisplayMode(.large)
        }
      
    }
}

#Preview {
    ContentView()
}

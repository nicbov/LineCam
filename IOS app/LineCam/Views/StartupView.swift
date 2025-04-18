//
//  StartupView.swift
//  LineCam
//
//  Created by Nicolas Boving on 4/17/25.
//


import SwiftUI

struct StartupView: View {
    @State private var isActive = false

    var body: some View {
        Group {
            if isActive {
                HomeView()
            } else {
                VStack {
                    Spacer()
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(1.5)
                    Spacer()
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        isActive = true
                    }
                }
            }
        }
    }
}

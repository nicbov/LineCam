//
//  BarDetailView.swift
//  LineCam
//
//  Created by Nicolas Boving on 4/17/25.
//
import SwiftUI

struct BarDetailView: View {
    let barName: String
    let streamURL: URL

    var body: some View {
        VStack {
            Text(barName)
                .font(.title)
                .padding()

            VideoPlayerView(streamURL: streamURL)

            Spacer()
        }
        .padding()
    }
}

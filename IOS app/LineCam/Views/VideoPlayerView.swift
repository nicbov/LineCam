//
//  VideoPlayerView.swift
//  LineCam
//
//  Created by Nicolas Boving on 4/17/25.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let streamURL: URL

    var body: some View {
        VideoPlayer(player: AVPlayer(url: streamURL))
            .onAppear {
                AVPlayer(url: streamURL).play()
            }
            .frame(height: 300)
            .cornerRadius(16)
            .shadow(radius: 5)
    }
}

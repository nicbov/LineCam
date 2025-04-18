//
//  HomeView.swift
//  LineCam
//
//  Created by Nicolas Boving on 4/17/25.
//
import SwiftUI

struct HomeView: View {
    @State private var showMenu = false

    // You can later make this a struct like [Bar] if needed
    let bars: [(name: String, url: String)] = [
        ("No Anchovies", "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"),
        ("Gentle Bens'", "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"),
        ("Agave House", "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"),
        ("Fuku Sushi", "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"),
        ("Frog & Firkin", "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"),
        ("Blind Pig", "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8")
    ]

    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    // Centered logo
                    HStack {
                        Spacer()
                        Image("Image")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                        Spacer()
                    }

                    // Top-right menu
                    HStack {
                        Spacer()
                        Button(action: {
                            showMenu.toggle()
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .resizable()
                                .frame(width: 24, height: 18)
                                .padding()
                        }
                    }
                }
                .padding(.top)

                List {
                    ForEach(bars, id: \.name) { bar in
                        NavigationLink(destination: BarDetailView(
                            barName: bar.name,
                            streamURL: URL(string: bar.url)!
                        )) {
                            Text(bar.name)
                        }
                    }
                }
            }
            .sheet(isPresented: $showMenu) {
                MenuView()
            }
            .navigationBarHidden(true)
        }
    }
}

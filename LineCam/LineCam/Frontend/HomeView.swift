//
//  HomeView.swift
//  LineCam
//
//  Created by Nicolas Boving on 4/13/25.
//
import SwiftUI

struct HomeView: View {
    @State private var showMenu = false
    let bars = ["No Anchovies", "Gentle Bens'", "Agave House", "Fuku Sushi", "Frog & Firkin", "Blind Pig"]

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
                    ForEach(bars, id: \.self) { bar in
                        NavigationLink(destination: Text("\(bar) View")) {
                            Text(bar)
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

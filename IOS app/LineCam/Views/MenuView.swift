//
//  MenuView.swift
//  LineCam
//
//  Created by Nicolas Boving on 4/17/25.
//


import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("Account Settings View")) {
                    Text("Account Settings")
                }
                NavigationLink(destination: Text("Information View")) {
                    Text("Information")
                }
                NavigationLink(destination: Text("Subscription View")) {
                    Text("Subscription")
                }
            }
            .navigationTitle("Menu")
        }
    }
}

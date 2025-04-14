//
//  LoginView.swift
//  LineCam
//
//  Created by Nicolas Boving on 4/13/25.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isAuthenticated = false

    var body: some View {
        if isAuthenticated {
            HomeView()
        } else {
            GeometryReader { geometry in
                VStack(spacing: 20) {
                    Spacer().frame(height: geometry.size.height * 0.15) // Push content up

                    Image("Image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 150)

                    Text("Login to LineCam")
                        .font(.title)
                        .bold()

                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)

                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)

                    Button("Login") {
                        if username == "Test" && password == "Password" {
                            isAuthenticated = true
                        }
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                    Spacer()
                }
                .frame(width: geometry.size.width)
            }
        }
    }
}

//
//  ContentView.swift
//  music
//
//  Created by Giuseppe Davanzo on 06/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray.ignoresSafeArea()
                Circle().scale(2).foregroundColor(.white.opacity(0.25))
                Circle().scale(1.8).foregroundColor(.white.opacity(0.5))
                Circle().scale(1.6).foregroundColor(.white.opacity(0.75))
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
//                        Authenticate User
                    }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                    NavigationLink(
                        destination: Text("You are logged in @\(username)"),
                        isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                }
            }
        }.navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

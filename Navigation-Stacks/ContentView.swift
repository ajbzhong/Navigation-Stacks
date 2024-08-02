//
//  ContentView.swift
//  Navigation-Stacks
//
//  Created by Scholar on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("This is the root view 🌱")
                
                NavigationLink(destination: SecondView()) {
                    Text("Click me!")
                }
                .frame(width: 100, height: 100)
                .background(Color(.yellow))
                .clipShape(Circle())
            }
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink (destination: SecondView()){
                        Text("Second View")
                    }
                }
            }
//            .navigationTitle("Home")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}

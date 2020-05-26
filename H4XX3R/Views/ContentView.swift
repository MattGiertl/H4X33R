//
//  ContentView.swift
//  H4XX3R
//
//  Created by Giertl Matus on 02/05/2020.
//  Copyright © 2020 Giertl Matus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.networkManager.fetchData()
                }) {
                    Text("Refresh")
                }
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                    
                }
            }
            .navigationBarTitle("H4XX3R")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

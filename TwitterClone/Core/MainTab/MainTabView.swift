//
//  MainTabView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 30/10/2022.
//

import SwiftUI

struct MainTabView: View {
    // create a state property to keep track of selected indexes
    @State private var selectedIndex = 0
    var body: some View {
        // will help us keep track of selected indixes
        TabView(selection: $selectedIndex){
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
            // setting a label for the tab image
                .tabItem {
                    Image(systemName: "house")
                }
                 .tag(0)
            
            ExploreView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
            // setting a label for the tab image
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                 .tag(1)
            
            NotificationsView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
            // setting a label for the tab image
                .tabItem {
                    Image(systemName: "bell")
                }
                 .tag(2)
            
            MessagesView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
            // setting a label for the tab image
                .tabItem {
                    Image(systemName: "envelope.fill")
                }
                 .tag(3)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

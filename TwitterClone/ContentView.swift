//
//  ContentView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 30/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group{
            // no user loggeg in
            if viewModel.userSession == nil{
                LoginView()
            }else{
                mainInterfaceView
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView{
    var mainInterfaceView : some View {
        //        NavigationView{
                    ZStack(alignment: .topLeading) {
                        MainTabView()
                            .navigationBarHidden(showMenu)
                        
                        if showMenu{
                            ZStack{
                                Color(.black)
                                    .opacity(showMenu ? 0.7 : 0.0)
                            }.onTapGesture {
                                withAnimation(.easeInOut){
                                    showMenu = false
                                }
                            }
                            .ignoresSafeArea()
                        }
                        
                        SideMenuView()
                            .frame(width: 300)
                            .offset(x: showMenu ? 0 : -300, y: 0)
                            .background(showMenu ? Color.white : Color.clear)
                    }
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading){
                            // creating the toggle animation
                            Button {
                                withAnimation(.easeInOut){
                                    showMenu.toggle()
                                }
                            } label: {
                                Circle()
                                    .frame(width: 32, height: 32)
                            }

                        }
                    }
                    .onAppear{
                        showMenu = false
                    }
        //        }

    }
}

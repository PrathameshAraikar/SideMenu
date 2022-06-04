//
//  ContentView.swift
//  SideMenu
//
//  Created by Prathamesh Araikar on 04/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingMenu: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowingMenu {
                    SideMenuView(isShowingMenu: $isShowingMenu)
                }
                HomeView()
                    .cornerRadius(isShowingMenu ? 25 : 10)
                    .offset(
                        x: isShowingMenu ? 300 : 0,
                        y: isShowingMenu ? 44 : 0)
                    .scaleEffect(isShowingMenu ? 0.8 : 1)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                withAnimation(.spring()) {
                                    isShowingMenu.toggle()
                                }
                            } label: {
                                Image(systemName: "line.3.horizontal")
                            }
                        }
                    }
                    .navigationTitle("Home")
            }
//            .onAppear {
//                isShowingMenu = false
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            Text("Hello, world!")
                .padding()
        }
    }
}

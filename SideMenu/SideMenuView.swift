//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Prathamesh Araikar on 04/06/22.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowingMenu: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            VStack {
                // Header
                SideMenuHeader(isShowingMenu: $isShowingMenu)
                    .foregroundColor(.white)
                    .frame(height: 180)
                
               // Options
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink {
                        Text(option.title)
                    } label: {
                        SideMenuOptions(viewModel: option)
                            .foregroundColor(.white)
                            .padding(.bottom)
                    }

                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowingMenu: .constant(true))
    }
}

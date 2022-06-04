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
            LinearGradient(colors: [Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            VStack {
                // Header
                SideMenuHeader(isShowingMenu: $isShowingMenu)
                    .foregroundColor(.white)
                    .frame(height: 180)
                
               // Options
                ForEach(0..<5) { _ in
                    SideMenuOptions()
                        .foregroundColor(.white)
                        .padding(.bottom)
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

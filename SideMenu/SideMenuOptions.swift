//
//  SideMenuOptions.swift
//  SideMenu
//
//  Created by Prathamesh Araikar on 04/06/22.
//

import SwiftUI

struct SideMenuOptions: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding()
            
            Text("Profile")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            
            Spacer()
        }
    }
}

struct SideMenuOptions_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptions()
    }
}

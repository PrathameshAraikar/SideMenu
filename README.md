# SideMenu

## About project
This is an iOS SwiftUI app that creates a side menu. The app consists of several files:

1. ContentView.swift: This file contains the main view of the app, which is a NavigationView containing a ZStack. The ZStack contains the HomeView and the SideMenuView, which is hidden or shown depending on the isShowingMenu state variable. The HomeView is a simple view with a white background and a text saying "Hello, world!".
2. SideMenuHeader.swift: This file contains the header of the side menu, which is a VStack containing an Image of a person's circle, the person's name, and a close button that toggles the isShowingMenu state variable.
3. SideMenuOptions.swift: This file contains the options of the side menu, which are HStacks containing an Image and a Text with the name of the option.
4. SideMenuView.swift: This file contains the view of the side menu, which is a ZStack containing a LinearGradient background and a VStack. The VStack contains the SideMenuHeader and a ForEach loop with the SideMenuOptions. Each SideMenuOptions is a NavigationLink that displays a Text with the name of the option.
5. SideMenuViewModel.swift: This file contains the view model of the side menu, which is an enumeration with five cases: profile, cart, orders, faqs, and aboutus. Each case has a title property that returns a string with the name of the option.

The app uses the isShowingMenu state variable to toggle the visibility of the SideMenuView. When the user taps on the hamburger button, the isShowingMenu variable is toggled, and the side menu is displayed or hidden depending on its value. The app also uses SwiftUI animations to make the transition between the HomeView and the SideMenuView smoother.

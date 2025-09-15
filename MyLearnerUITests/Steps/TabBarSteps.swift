//
//  TabBarSteps.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 15/9/2025.
//

import Foundation

class TabBarSteps {
    
    let tabBar = TabBar()
    
    func tapOnMoreTab() {
        tabBar.isMoreTabBarVisible()
        let _ = tabBar.tapOnMore()
    }
    
}

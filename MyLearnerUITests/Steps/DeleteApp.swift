//
//  DeleteApp.swift
//  MyLearnerUITests
//
//  Created by Tony Chen on 26/8/2025.
//

import Foundation

class DeleteApp: DeleteAppScreen {
    
    let deleteAppAction = DeleteAppScreen(springboard)
    
    func deleteAppFromSpringboard() {
        goToHomeScreen()
        pressOnAppIcon()
        pressOnRemoveAppButton()
        pressOnDeleteAppButton()
        pressOnConfirmDeleteButton()
    }
}

//
//  MeowleSettingsPage.swift
//  meowleUITests
//
//  Created by Анна Шалакова on 24.05.2024.
//

import Foundation
import XCTest
import Swifter


final class MeowleSettingsUITests: BasePage {
    
    // MARK: - Tests
    
    // Задача 3. Учимся прописывать айдишник (accessibilityIdentifyer) элементу
    func testLogOut() {
        
        openApp(isAuthorised: true)
        
        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
            .tapSettingsButton()
        
        MeowleSettingsPage()
            .checkThatSearchScreenIsOpened()
            .taplogOutButtonWithAccessibilityIdentifyer()
        
        MeowleAuthPage()
            .checkThatAuthScreenenIsOpened()
    }
}

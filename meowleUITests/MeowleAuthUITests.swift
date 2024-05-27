//
//  MeowleAuth.swift
//  meowleUITests
//
//  Created by Анна Шалакова on 23.05.2024.
//

import XCTest

private extension String {
    static let nameUser = "Анна"
}

final class MeowleAuthUITests: BasePage {
    
    // MARK: - Tests
    
    // Задача 1. Тест на авторизацию в приложении:
    func testAuth() {
        
        openApp(isAuthorised: false)
        
        MeowleAuthPage()
            .taptextField()
            .typeTextTo(textField: .nameUser)
            .tapEnterButton()
            
        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
    }
  }

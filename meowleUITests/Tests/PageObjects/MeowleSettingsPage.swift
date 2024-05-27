//
//  MeowleSettingsPage.swift
//  meowleUITests
//
//  Created by Анна Шалакова on 24.05.2024.
//

import XCTest

private extension String {
    static let settingsScreenIdentifier = "settingsScreenViewController"
    static let logOutButtonLabel = "Выйти из аккаунта"
    static let logOutButtonIdentifier = "logOutFromApplication"
}

final class MeowleSettingsPage: BasePage {
    
    // MARK: - Elements
    
    private lazy var settingsScreenTitle = app.otherElements[.settingsScreenIdentifier]
    private lazy var logOutButton = app.buttons[.logOutButtonLabel]
    private lazy var logOutButtonWithIdentifyer = app.buttons[.logOutButtonIdentifier]
    
    // MARK: - Actions
    
    // Тап по кнопке c прописанным accessibilityIdentifyer
    @discardableResult
    func taplogOutButtonWithAccessibilityIdentifyer() -> MeowleSettingsPage {
        logOutButtonWithIdentifyer.tap()
        return self
    }

    // MARK: - Asserts
    
    // Проверка, что экран "Настройки" открылся
    @discardableResult
    func checkThatSearchScreenIsOpened() -> MeowleSettingsPage {
        XCTAssertTrue(settingsScreenTitle.waitForExistence(timeout: .timeout))
        return self
    }
}

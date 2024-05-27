//
//  MeowleSearchResultsPage.swift
//  meowleUITests
//
//  Created by Анна Шалакова on 24.05.2024.
//

import XCTest

private extension String {
    static let searchResultsIdentifier = "searchResultsViewController"
}

final class MeowleSearchResultsPage: BasePage {
    
    // MARK: - Elements

    private lazy var searchResultsTitle = app.otherElements[.searchResultsIdentifier]

    // MARK: - Asserts
    
    // Проверка, что экран "Результаты поиска" открылся
    @discardableResult
    func checkThatSearchResultsIsOpened() -> MeowleSearchResultsPage {
        XCTAssertTrue(searchResultsTitle.waitForExistence(timeout: .timeout))
        return self
    }
    
    // Проверка, что отображена страница с замоканными котиками
    @discardableResult
    func assertDisplayedMockedCat(name: String) -> MeowleSearchResultsPage {
        XCTAssertTrue(app.staticTexts[name].waitForExistence(timeout: .timeout))
        return self
    }
}

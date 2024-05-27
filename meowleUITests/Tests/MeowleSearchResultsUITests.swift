//
//  MeowleSearchResultsUITests.swift
//  meowleUITests
//
//  Created by Анна Шалакова on 25.05.2024.
//

import XCTest

private extension String {
    static let firstCat = "Кот №1"
    static let secondCat = "Кот №2"
    static let thirdCat = "Кот №3"
}

final class MeowleSearchResultsUITests: BasePage {
    
    // MARK: - Tests
    
    //Задача 2. Тест на мокирование списка имен котиков.
    func testSearchResult() {
        
        setNetworkStub(for: "core/cats/allByLetter",
                       jsonFilename: "core_cats_allByLetter")
        
        openApp(isAuthorised: true)
       
        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
            .tapAllNameButton()
        
        MeowleSearchResultsPage()
            .checkThatSearchResultsIsOpened()
            .assertDisplayedMockedCat(name: .firstCat)
            .assertDisplayedMockedCat(name: .secondCat)
            .assertDisplayedMockedCat(name: .thirdCat)
    }
}
 

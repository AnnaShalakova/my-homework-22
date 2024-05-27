//
//  MeowleAddLikeTests.swift
//  meowleUITests
//
//  Created by Анна Шалакова on 23.05.2024.
//

import XCTest

private extension String {
    static let catBaton = "Батон"
    static let expectedCountLikes = "👍 6"
}

final class MeowCatDetailsUITests: BasePage {
    
    // MARK: - Tests
    
    // Задача 4. Ставим лайк котику и проверяем, что лайк проставллен.
    func testAddLikeTests() {
        
        openApp(isAuthorised: true)
     
        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
            .tapSearchField()
            .typeTextTo(textField: .catBaton)
            .tapSearchButtonWithAccessibilityIdentifyer()
            .assertExistanceNameOf(cat: .catBaton)
            .tapCat(name: .catBaton)
        
        MeowleCatDetailsPage()
            .tapLikeButton()
            .assertAddLike(countLike: .expectedCountLikes)
    }
}

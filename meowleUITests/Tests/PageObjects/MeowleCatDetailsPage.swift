//
//  MeowleCatDetailsPage.swift
//  meowleUITests
//
//  Created by Анна Шалакова on 23.05.2024.
//

import XCTest

private extension String {
    static let likeButtonLabel = "👍 5"
}

final class MeowleCatDetailsPage: BasePage {
    
    // MARK: - Elements
    
    private lazy var likeButton = app.buttons[.likeButtonLabel]
    
    // MARK: - Actions
    
    
    // Тап по кнопке "Лайк"
    @discardableResult
    func tapLikeButton() -> MeowleCatDetailsPage {
        likeButton.tap()
        return self
    }
    
    // MARK: - Asserts
    
    // Проверка увеличения количества лайков
    @discardableResult
    func assertAddLike(countLike: String) -> MeowleCatDetailsPage {
        XCTAssertTrue(app.staticTexts[countLike].waitForExistence(timeout: .timeout))
        return self
    }
}

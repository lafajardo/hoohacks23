//
//  SmartCardsViewModel.swift
//  SmartCards
//
//  Created by William Wang on 3/25/23.
//

import SwiftUI
@MainActor

class smartCardsViewModel: ObservableObject {
    @Published var questionText = ""
    @Published var answerText = ""
    @Published var index = 0
    @Published var cardList: [smartCard] = []

    func AIGenerate(prompt: String) -> String {
        guard let answer = OpenAIConnector().processPrompt(prompt: "\(prompt)") else { fatalError("Invalid URl") }

//        cards.append(smartCard(id: UUID(), question: prompt, answer: answer))
        return answer
    }
}

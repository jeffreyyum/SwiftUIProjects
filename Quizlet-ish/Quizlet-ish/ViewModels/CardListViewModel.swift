//
//  CardListViewModel.swift
//  Quizlet-ish
//
//  Created by Jeffrey Yum on 4/13/22.
//

import Foundation
import Combine

class CardListViewModel: ObservableObject {

  @Published var cardViewModels: [CardViewModel] = []

  private var cancellables: Set<AnyCancellable> = []


  @Published var cardRepository = CardRepository()

  init() {

    cardRepository.$cards.map { cards in
      cards.map(CardViewModel.init)
    }

    .assign(to: \.cardViewModels, on: self)

    .store(in: &cancellables)
  }


  func add(_ card: Card) {
    cardRepository.add(card)
  }
}

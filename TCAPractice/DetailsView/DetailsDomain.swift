//
//  State.swift
//  TCAPractice
//
//  Created by devdchaudhary on 24/06/23.
//

import Foundation
import ComposableArchitecture

struct DetailsViewDomain: ReducerProtocol {
    
     struct State: Equatable {
         let formDetails: FormModel
    }
    
    enum DetailsAction: Equatable {
        case cellTapped(cellIndex: Int)
    }
    
    func reduce(into state: inout State, action: DetailsAction) -> EffectTask<DetailsAction> {
        
        switch action {
        case .cellTapped(cellIndex: let index):
            ToastManager().showSuccess(index.description)
            return .none
        }
    }
}


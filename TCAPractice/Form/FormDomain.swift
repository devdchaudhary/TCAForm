//
//  Domain.swift
//  TCAPractice
//
//  Created by devdchaudhary on 25/06/23.
//

import Foundation
import ComposableArchitecture

struct FormDomain: ReducerProtocol {
    
    struct State: Equatable {
        
        @BindingState var firstName = ""
        @BindingState var lastName = ""
        @BindingState var age = ""
        @BindingState var gender = ""
        @BindingState var email = ""
        @BindingState var phNo = ""
        @BindingState var presentDetailsView = false
        
        var details: FormModel = .init(firstName: "", lastName: "", age: 0, gender: "", email: "", phNo: "")
    }
    
    enum Action: BindableAction, Equatable {
        case binding(BindingAction<State>)
        case submit(details: FormModel)
        case twoFactor(DetailsViewDomain.Action)
    }
    
    var body: some ReducerProtocol<State, Action> {
      BindingReducer()
      Reduce { state, action in
          switch action {
          case .binding:
              return .none
          case .submit(let details):
              state.details = details
              state.presentDetailsView = true
              return .none
          case .twoFactor(_):
              return .none
          }
      }
    }
}

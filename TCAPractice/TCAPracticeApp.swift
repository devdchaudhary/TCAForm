//
//  TCAPracticeApp.swift
//  TCAPractice
//
//  Created by devdchaudhary on 20/06/23.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCAPracticeApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                FormView ( 
                    store: Store(initialState: FormDomain.State()) {
                        FormDomain()
                    }
                )
            }
        }
    }
}

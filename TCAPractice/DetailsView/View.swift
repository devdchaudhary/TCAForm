//
//  View.swift
//  TCAPractice
//
//  Created by devdchaudhary on 25/06/23.
//

import SwiftUI
import ComposableArchitecture

struct DetailsView: View {
    
    let store: StoreOf<DetailsViewDomain>
    
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            VStack {
                
                Text(viewStore.formDetails.firstName)
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                    .padding(.vertical)
                
                Text(viewStore.formDetails.lastName)
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                    .padding(.vertical)

                Text(viewStore.formDetails.age.description)
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                    .padding(.vertical)
                
                Text(viewStore.formDetails.email)
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                    .padding(.vertical)
                
                Text(viewStore.formDetails.gender)
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                    .padding(.vertical)
                
                Text(viewStore.formDetails.phNo)
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                    .padding(.vertical)

            }
            .onAppear {
                print(viewStore.formDetails)
            }
        }
    }
}

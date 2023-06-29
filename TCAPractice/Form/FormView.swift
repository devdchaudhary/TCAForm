//
//  ContentView.swift
//  TCAPractice
//
//  Created by devdchaudhary on 20/06/23.
//

import SwiftUI
import ComposableArchitecture

struct FormView: View {
    
    let store: StoreOf<FormDomain>
    
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            Form {
                
                Section("Name") {
                    
                    TextField("First name", text: viewStore.binding(\.$firstName))
                        .disableAutocorrection(true)
                    
                    TextField("Last here", text: viewStore.binding(\.$lastName))
                        .disableAutocorrection(true)
                }
                
                Section("Age") {

                    TextField("Type here", text: viewStore.binding(\.$age))
                        .disableAutocorrection(true)
                        .keyboardType(.numberPad)
                }

                Section("Gender") {

                    TextField("Type here", text: viewStore.binding(\.$gender))
                        .disableAutocorrection(true)
                }

                Section("Email") {

                    TextField("Type here", text: viewStore.binding(\.$email))
                        .disableAutocorrection(true)
                        .keyboardType(.emailAddress)

                }

                Section("Phone Number") {

                    TextField("Type here", text: viewStore.binding(\.$phNo))
                        .disableAutocorrection(true)
                        .keyboardType(.numberPad)
                }
            }
            
            Button {
                                
                let newDetails = FormModel(firstName: viewStore.binding(\.$firstName).wrappedValue, lastName: viewStore.binding(\.$lastName).wrappedValue, age: Int(viewStore.binding(\.$age).wrappedValue) ?? 0, gender: viewStore.binding(\.$gender).wrappedValue, email: viewStore.binding(\.$email).wrappedValue, phNo: viewStore.binding(\.$phNo).wrappedValue)
                
                viewStore.send(.submit(details: newDetails))
                
            } label: {
                VStack(alignment: .center) {
                    Text("Submit Form")
                        .font(.system(size: 25))
                }
            }
            .navigationDestination(isPresented: viewStore.binding(\.$presentDetailsView)) {
                DetailsView(store: .init(initialState: DetailsViewDomain.State(formDetails: viewStore.details), reducer: {
                        DetailsViewDomain()
                    }))
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(
            store: Store(initialState: FormDomain.State()) {
                FormDomain()
            }
        )
    }
}

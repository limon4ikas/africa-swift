//
//  ContentView.swift
//  Africa
//
//  Created by Cat on 19.09.2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    // MARK: - BODY

    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(
                        destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }
                } //: LOOP
            } //: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

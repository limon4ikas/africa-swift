//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Cat on 19.09.2021.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES

    let animal: AnimalModel

    // MARK: - BODY

    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                
                Spacer()

                Group {
                    Image(systemName: "arrow.up.right.square")

                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                } //: GROUP
                .foregroundColor(.accentColor)
            }
        } //: GROUPBOX
    }
}

// MARK: - PREVIEW

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

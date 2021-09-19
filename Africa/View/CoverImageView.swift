//
//  CovereImageView.swift
//  Africa
//
//  Created by Cat on 19.09.2021.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES

    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")

    // MARK: - BODY

    var body: some View {
        TabView {
            ForEach(coverImages) { coverImage in
                Image(coverImage.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - PREVIEW

struct CovereImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}

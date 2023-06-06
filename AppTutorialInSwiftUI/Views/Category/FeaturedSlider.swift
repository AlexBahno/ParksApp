//
//  FeaturedSlider.swift
//  AppTutorialInSwiftUI
//
//  Created by Alexandr Bahno on 03.06.2023.
//

import SwiftUI

struct FeaturedSlider: View {
    
    var featuredLandmarks: [Landmark]
    
    public let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State private var selection = 0

    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                ForEach(0..<featuredLandmarks.count) { i in
                    NavigationLink(
                        destination: LandmarkDetail(landmark: featuredLandmarks[i])
                    ) {
                        featuredLandmarks[i].image
                            .resizable()
                            .scaledToFill()
                            .clipped()
                    }
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onReceive(timer, perform: {_ in
            withAnimation {
                selection = selection < featuredLandmarks.count ? selection + 1 : 0
            }
        })
    }
}


struct FeaturedSlider_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedSlider(featuredLandmarks: ModelData().features)
    }
}

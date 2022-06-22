//
//  ContentView.swift
//  CompassSample
//
//  Created by cmStudent on 2022/04/20.
//

import SwiftUI
import MapKit

struct ContentView: View {

    @ObservedObject var manager = LocationManager()

    var body: some View {
        let heading   = $manager.heading.wrappedValue

        VStack{
            Text("北方向: \(heading)")
            
            Image("CompassImage")
                .rotationEffect(Angle(degrees: -heading))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

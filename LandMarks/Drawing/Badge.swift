//
//  Badge.swift
//  LandMarks
//
//  Created by Hanlin Chen on 8/27/20.
//  Copyright © 2020 Hanlin Chen. All rights reserved.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8
    
    var badgeSymbol: some View {
        ForEach(0..<Badge.rotationCount){ i in
            RotatedBadgeSymbol(angle: Angle(degrees: (Double(i)/Double(Badge.rotationCount))*360))
        }.opacity(0.5)
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader {
                geometry in
                self.badgeSymbol.scaleEffect(1/4, anchor: .top).position(x: geometry.size.width/2.0, y: (3 / 4.0) * geometry.size.height)
            }
        }.scaledToFit()
    }
    
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}

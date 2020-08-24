//
//  UserData.swift
//  LandMarks
//
//  Created by Hanlin Chen on 8/24/20.
//  Copyright © 2020 Hanlin Chen. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly:Bool = false
    @Published var landmarks = landmarkData
}

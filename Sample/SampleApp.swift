//
//  SampleApp.swift
//  Sample
//
//  Created by Artūrs Āre on 29/12/2021.
//

import SwiftUI

@main
struct SampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(vm: ContentViewModel())
        }
    }
}

//
//  ContentViewModel.swift
//  Sample
//
//  Created by Artūrs Āre on 29/12/2021.
//

import UIKit
import Combine
import DeviceID

final class ContentViewModel: ObservableObject {

    @Published var labelText = ""
    var buttonText = "Get me the 🆔"

    private var bag = Set<AnyCancellable>()
    
    func getId() {
        labelText = ID().getDeviceId() ?? "Try Later"
    }
}

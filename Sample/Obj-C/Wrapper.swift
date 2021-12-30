//
//  Wrapper.swift
//  Sample
//
//  Created by Artūrs Āre on 29/12/2021.
//

import Foundation
import DeviceID

@objc
class Wrapper: NSObject {
    @objc func getDeviceId() -> String? {
        ID().getDeviceId()
    }
}

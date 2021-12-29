//
//  Keychain.swift
//  DeviceID
//
//  Created by Artūrs Āre on 29/12/2021.
//

import Valet

class Keychain {
    
    enum Key: String {
        case deviceID
    }
    
    private static let id = Identifier(nonEmpty: "lv.arturs.keychain")!
    private let valet = Valet.valet(with: id, accessibility: .afterFirstUnlockThisDeviceOnly)
    
    func set(string: String?, for key: Key) -> String? {
        guard let string = string else {
            return nil
        }

        // absorb errors here since we don't want to scare our end user
        do {
            try valet.setString(string, forKey: key.rawValue)
            return string
        } catch {
            return nil
        }
    }
    
    func string(for key: Key) -> String? {
        try? valet.string(forKey: key.rawValue)
    }
}

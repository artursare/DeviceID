//
//  ID.swift
//  DeviceID
//
//  Created by Artūrs Āre on 29/12/2021.
//

import UIKit

// MARK: - Public interface
public extension ID {
    /**
     An alphanumeric string that uniquely identifies a device.
     
     - Warning: If the value is nil, wait and get the value again later. This happens, for example, after the device has been restarted but before the user has unlocked the device.
     
     - Returns: String created from UUID, such as “E621E1F8-C36C-495A-93FC-0C247A3E6E5F”
     */
    func getDeviceId() -> String? {
        fetchDeviceID()
    }
}

// MARK: -Internal implementation

/// Defines main interface of the DeviceID SDK
public class ID {

    private let keychain = Keychain()
    
    public init() {}
    
    /// Gets an IDFV string from keychain or stores one if it does not exist yet
    private func fetchDeviceID() -> String? {
        if let id = keychain.string(for: .deviceID) {
            return id
        }
        
        let uuid = UIDevice.current.identifierForVendor?.uuidString
        return keychain.set(string: uuid, for: .deviceID)
    }
}

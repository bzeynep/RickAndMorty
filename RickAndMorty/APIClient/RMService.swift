//
//  RMService.swift
//  RickAndMorty
//
//  Created by Zeynep Turnalı on 6.03.2024.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructer
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    private func execute(_ request: RMRequest, completion: @escaping () -> Void) {

    }
}

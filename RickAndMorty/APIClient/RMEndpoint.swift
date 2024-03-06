//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Zeynep Turnalı on 6.03.2024.
//

import Foundation

/// Represent unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get character location
    case location
    /// Endpoint to get character episode
    case episode
}

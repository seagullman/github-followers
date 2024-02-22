//
//  GFError.swift
//  GHFollowers
//
//  Created by Brad Siegel on 2/21/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the serve is invalid. Please try again."
}

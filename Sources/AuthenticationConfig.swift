//
//  AuthenticationConfig.swift
//  TurnstilePerfect
//
//  Created by Jonathan Guthrie on 2016-12-08.
//
//

/// Sets up the matrix of which routes are checked for authentication, and which are not.
public struct AuthenticationConfig {

	/// An array of routes that are checked for valid authentication.
	public var inclusions = [String]()

	/// An array of routes that will not be checked.
	public var exclusions = [String]()

	/// Unimplemented. Will optionally provide a location for access denied redirection.
	public var denied: String?

	public init() {}

	/// Add a route as a string to the array of inclusions
	public mutating func include(_ str: String) {
		inclusions.append(str)
	}
	/// Add a an array of strings (as routes) to the array of inclusions
	public mutating func include(_ arr: [String]) {
		inclusions += arr
	}
	/// Add a route as a string to the array of exclusions
	public mutating func exclude(_ str: String) {
		exclusions.append(str)
	}
	/// Add a an array of strings (as routes) to the array of exclusions
	public mutating func exclude(_ arr: [String]) {
		exclusions += arr
	}
}

//
//  AuthRealm.swift
//  PerfectTurnstileSQLiteDemo
//
//  Created by Jonathan Guthrie on 2016-12-08.
//
//


import Turnstile
import TurnstileCrypto

public class AuthRealm : Realm {
	public var random: Random = URandom()

	public init() {}

	open func authenticate(credentials: Credentials) throws -> Account {
		throw UnsupportedCredentialsError()

	}

	open func authenticate(credentials: AccessToken) throws -> Account {
		throw IncorrectCredentialsError()
	}


	open func authenticate(credentials: UsernamePassword) throws -> Account {
		throw IncorrectCredentialsError()
	}

	//	private func authenticate(credentials: FacebookAccount) throws -> Account {
	//		if let account = accounts.filter({$0.facebookID == credentials.uniqueID}).first {
	//			return account
	//		} else {
	//			return try register(credentials: credentials)
	//		}
	//	}
	//
	//	private func authenticate(credentials: GoogleAccount) throws -> Account {
	//		if let account = accounts.filter({$0.googleID == credentials.uniqueID}).first {
	//			return account
	//		} else {
	//			return try register(credentials: credentials)
	//		}
	//	}

	/**
	Registers PasswordCredentials against the AuthRealm.
	*/
	open func register(credentials: Credentials) throws -> Account {
		throw UnsupportedCredentialsError()
	}
}

//
//  SessionManager.swift
//  PerfectTurnstileSQLite
//
//  Created by Jonathan Guthrie on 2016-10-19.
//
//

import TurnstileCrypto
import Turnstile

/**
SQLiteSessionManager manages sessions via SQLite storage
*/
open class PerfectSessionManager: SessionManager {
	public let random: Random = URandom()

	/// Initializes the Session Manager. No config needed!
	public init() {}

	/// Creates a session for a given Subject object and returns the identifier.
	open func createSession(account: Account) -> String {
		return ""
	}

	/// Deletes the session for a session identifier.
	open func destroySession(identifier: String) {}

	/**
	Creates a Session-backed Account object from the Session store. This only
	contains the SessionID.
	*/
	public func restoreAccount(fromSessionID identifier: String) throws -> Account {
		throw InvalidSessionError()
	}
}

import Turnstile
import TurnstileWeb
import PerfectHTTP

/// Base Turnstile Perfect class
public class TurnstilePerfect {

    public var requestFilter: (HTTPRequestFilter, HTTPFilterPriority)
    public var responseFilter: (HTTPResponseFilter, HTTPFilterPriority)
    
    private let turnstile: Turnstile

	/// initializes with the Session Manager (default is memory, to be overridden by child modules)
    public init(sessionManager: SessionManager = MemorySessionManager(), realm: Realm = WebMemoryRealm()) {
        turnstile = Turnstile(sessionManager: sessionManager, realm: realm)
        let filter = TurnstileFilter(turnstile: turnstile)
        
        // Not sure how polymorphicism works with tuples, but the compiler was crashing on me
        // So I did this
        requestFilter = (filter, HTTPFilterPriority.high)
        responseFilter = (filter, HTTPFilterPriority.high)
    }
}

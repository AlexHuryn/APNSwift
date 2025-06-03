public struct APNSStartLiveActivityAlert: Encodable, Sendable {

    public struct LocalizedString: Encodable, Sendable {

        enum CodingKeys: String, CodingKey {
            case key = "loc-key"
            case args = "loc-args"
        }

        let key: String
        let args: [String]?

        public init(key: String, args: [String]? = nil) {
            self.key = key
            self.args = args
        }
    }

    let title: LocalizedString
    let body: LocalizedString?

    public init(title: LocalizedString, body: LocalizedString? = nil) {
        self.title = title
        self.body = body
    }
}

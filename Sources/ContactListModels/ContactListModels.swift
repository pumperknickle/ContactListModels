import Foundation

public struct Contact: Codable {
    public var id: Int?
    public let f_name: String
    public let m_name: String
    public let l_name: String
}

public struct Address: Codable {
    public var id: Int?
    public let contact_id: Int
    public let address_type: AddressType
    public let address: String
    public let state: String
    public let zip: String
}

public struct Phone: Codable {
    public var id: Int?
    public var contact_id: Int
    public var phone_type: PhoneType
    public var area_code: String
    public var number: String
}

public struct Date: Codable {
    public var id: Int?
    public var contact_id: Int
    public var date_type: DateType
    public var calendar_date: Foundation.Date
}

public enum AddressType: Int, Codable {
    case HOME = 0, WORK, OTHER
}

public enum PhoneType: Int, Codable {
    case HOME = 0, WORK, FAX, OTHER
}

public enum DateType: Int, Codable {
    case BIRTHDAY = 0, ANNIVERSARY, OTHER
}

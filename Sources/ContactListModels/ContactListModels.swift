import Foundation

public struct Contact: Codable {
    public var id: Int?
    public let f_name: String!
    public let m_name: String!
    public let l_name: String!
    
    public init(id: Int? = nil, f_name: String, m_name: String, l_name: String) {
        self.id = id
        self.f_name = f_name
        self.m_name = m_name
        self.l_name = l_name
    }
}

public struct Address: Codable {
    public var id: Int?
    public let contact_id: Int
    public let address_type: AddressType
    public let address: String
    public let city: String
    public let state: String
    public let zip: String
    
    public init(id: Int? = nil, contact_id: Int, address_type: AddressType, address: String, city: String, state: String, zip: String) {
        self.id = id
        self.contact_id = contact_id
        self.address_type = address_type
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
    }
}

public struct Phone: Codable {
    public var id: Int?
    public let contact_id: Int
    public let phone_type: PhoneType
    public let area_code: String
    public let number: String
    
    public init(id: Int? = nil, contact_id: Int, phone_type: PhoneType, area_code: String, number: String) {
        self.id = id
        self.contact_id = contact_id
        self.phone_type = phone_type
        self.area_code = area_code
        self.number = number
    }
}

public struct Date: Codable {
    public var id: Int?
    public let contact_id: Int
    public let date_type: DateType
    public let calendar_date: Foundation.Date
    
    public init(id: Int? = nil, contact_id: Int, date_type: DateType, calendar_date: Foundation.Date) {
        self.id = id
        self.contact_id = contact_id
        self.date_type = date_type
        self.calendar_date = calendar_date
    }
}

public enum AddressType: Int, Codable, CaseIterable, Identifiable {
    public var id: AddressType { self }
    case HOME = 0, WORK, OTHER
}

public enum PhoneType: Int, Codable, CaseIterable, Identifiable {
    public var id: PhoneType { self }
    case HOME = 0, WORK, FAX, OTHER
}

public enum DateType: Int, Codable, CaseIterable, Identifiable {
    public var id: DateType { self }
    case BIRTHDAY = 0, ANNIVERSARY, OTHER
}

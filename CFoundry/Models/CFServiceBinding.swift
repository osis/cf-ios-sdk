import Foundation
import ObjectMapper

public class CFServiceBinding: ImmutableMappable {
    public var name: String
    public var planName: String
    public var serviceLabel: String
    
    public required init(map: Map) throws {
        name = try map.value("name")
        planName = try map.value("service_plan.name")
        serviceLabel = try map.value("service_plan.service.label")
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        planName <- map["service_plan.name"]
        serviceLabel <- map["service_plan.service.label"]
    }
}

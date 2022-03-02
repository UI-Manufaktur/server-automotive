module servers.automotive.entities.devices.warranties.limit;

@safe:
import models.automotive;

// Limits of a specific warranty on a specific vehicle or device, such as maximum mileage or specific expiration date.
class DATMDeviceWarrantyLimit : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceWarrantyLimit"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated. "]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id "]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team. "]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only. "]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created. "]),
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Device for which this warranty limit applies. "]),
        "deviceMeasureId": OOPUUIDAttribute.descriptions(["en":"Metric used in tracking this warranty. "]),
        "deviceWarrantyLimitId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "unitId": OOPUUIDAttribute.descriptions(["en":"Component by which the warranty metric is to be measured. "]),
        "value": OOPStringAttribute.descriptions(["en":"Value of the warranty limit. "]),
        "warrantyLimitId": OOPUUIDAttribute.descriptions(["en":"Parent warranty limit for this device warranty limit. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Warranty Limit "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Warranty Limit "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_devicewarrantylimits");
  }
}
mixin(OOPEntityCalls!("ATMDeviceWarrantyLimit"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceWarrantyLimit);
  
  auto entity = ATMDeviceWarrantyLimit;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
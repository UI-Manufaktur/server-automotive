module servers.automotive.entities.devices.state;

@safe:
import models.automotive;

// Describes state of a vehicle or device, such as New, Used or Scrapped.
class DATMDeviceState : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceState"));
  
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
        "deviceStateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "inventoryStatus": OOPStringAttribute.descriptions(["en":"Inventory status of the device (available, not available, fleet, on loan, etc.). "]),
        "inventoryStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "ownershipStatus": OOPStringAttribute.descriptions(["en":"Is the vehicle or device titled or untitled? "]),
        "ownershipStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "ownershipType": OOPStringAttribute.descriptions(["en":"Ownership category (financing provider, customer or dealer)? "]),
        "ownershipType_display": OOPStringAttribute.descriptions(["en":""]),
        "tradeStatus": OOPStringAttribute.descriptions(["en":"Indicates whether the vehicle or device is new, certified used or used. "]),
        "tradeStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device State "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device State "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_devicestates");
  }
}
mixin(OOPEntityCalls!("ATMDeviceState"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceState);
  
  auto entity = ATMDeviceState;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
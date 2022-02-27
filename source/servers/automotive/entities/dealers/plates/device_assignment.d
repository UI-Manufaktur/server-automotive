module models.automotive.entities.dealers.plates.device_assignment;

@safe:
import models.automotive;

// Record of which dealer plates were used on which vehicle or device over time.
class DATMDealerPlateDeviceAssignment : DOOPEntity {
  mixin(OOPEntityThis!("ATMDealerPlateDeviceAssignment"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "businessOperationId": OOPUUIDAttribute.descriptions(["en":"Department/team at dealership responsible for dealer plate."]),
        "comments": OOPStringAttribute.descriptions(["en":"Note or remarks about the dealer plate."]),
        "dealerPlateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "deviceId": OOPUUIDAttribute.descriptions(["en":"The vehicle for this dealer plate assignment."]),
        "testDriveId": OOPUUIDAttribute.descriptions(["en":"Test drive of the vehicle."]),
        "validFrom": OOPStringAttribute.descriptions(["en":"First date for which the dealer plate assignment is valid."]),
        "validTo": OOPStringAttribute.descriptions(["en":"Last date for which the dealer plate assignment is valid."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Dealer Plate Device Assignment 	automotive/"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":"automotive/"]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Dealer Plate Device Assignment 	automotive/"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":"automotive/"]),
      ])
      .registerPath("automotive_dealerplatedeviceassignments");
  }
}
mixin(OOPEntityCalls!("ATMDealerPlateDeviceAssignment"));

unittest {
  version(uim_entities) {
    assert(ATMDealerPlateDeviceAssignment);

  auto entity = ATMDealerPlateDeviceAssignment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
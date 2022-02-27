module models.automotive.entities.dealers.plates.plate;

@safe:
import models.automotive;

// License plate applied temporarily to vehicles to provide services such as test drives.
class DATMDealerPlate : DOOPEntity {
  mixin(OOPEntityThis!("ATMDealerPlate"));
  
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
        "issuedBy": OOPLinkAttribute("aplUser").descriptions(["en":"Person who issued the dealer plate."]),
        "registrationNumber": OOPIntegerAttribute.descriptions(["en":"Name of the dealer plate."]),
        "validFrom": OOPStringAttribute.descriptions(["en":"First date for which the dealer plate is valid."]),
        "validTo": OOPStringAttribute.descriptions(["en":"Last date for which the dealer plate is valid."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Dealer Plate"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Dealer Plate"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_dealerplates");
  }
}
mixin(OOPEntityCalls!("ATMDealerPlate"));

unittest {
  version(uim_entities) {
    assert(ATMDealerPlate);

  auto entity = ATMDealerPlate;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
module servers.automotive.entities.devices.license_plate;

@safe:
import models.automotive;

// Record of license plates assigned to a given vehicle or device over time.
class DATMDeviceLicensePlate : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceLicensePlate"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "comments": OOPStringAttribute.descriptions(["en":"Notes or remarks about the license plate."]),
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Vehicle for which the license plate is registered."]),
        "deviceLicensePlateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "issuedBy": OOPLinkAttribute("aplUser").descriptions(["en":"Issuer of the license plate."]),
        "registrationNumber": OOPIntegerAttribute.descriptions(["en":"Name of the vehicle license plate."]),
        "validFrom": OOPStringAttribute.descriptions(["en":"First day for which the license plate is valid."]),
        "validTo": OOPStringAttribute.descriptions(["en":"Last day for which the license plate is valid."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device License Plate"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device License Plate"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_devicelicenseplates");
  }
}
mixin(OOPEntityCalls!("ATMDeviceLicensePlate"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceLicensePlate);
  
  auto entity = ATMDeviceLicensePlate;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
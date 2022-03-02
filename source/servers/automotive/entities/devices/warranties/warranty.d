module servers.automotive.entities.devices.warranties.warranty;

@safe:
import models.automotive;

// Relationship indicating that a specific warranty applies to a specific vehicle or device.
class DATMDeviceWarranty : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceWarranty"));
  
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
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Vehicle or device for which this warranty applies. "]),
        "deviceWarrantyId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "issuedOn": OOPTimestampAttribute.descriptions(["en":"Date that the warranty is issued. "]),
        "validFrom": OOPStringAttribute.descriptions(["en":"Last date for which the warranty is valid. "]),
        "validTo": OOPStringAttribute.descriptions(["en":"First date for which the warranty is valid. "]),
        "warrantyId": OOPUUIDAttribute.descriptions(["en":"Warranty that is applied to this device. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Warranty "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Warranty "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_devicewarranties");
  }
}
mixin(OOPEntityCalls!("ATMDeviceWarranty"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceWarranty);
  
  auto entity = ATMDeviceWarranty;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
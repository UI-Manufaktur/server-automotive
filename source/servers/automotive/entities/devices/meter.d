module servers.automotive.entities.devices.meter;

@safe:
import models.automotive;

// Usage meter attached to a specific vehicle or device, such as odometer or fuel gauge.
class DATMMeter : DOOPEntity {
  mixin(OOPEntityThis!("ATMMeter"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the territory."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated. "]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record. "]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id "]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team. "]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only. "]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created. "]),
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Parent device for this device meter. "]),
        "deviceMeasureId": OOPUUIDAttribute.descriptions(["en":"Type of measurement for this device meter. "]),
        "deviceMeterId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "expectedMaximum": OOPStringAttribute.descriptions(["en":"The anticipated maximum amount. "]),
        "expectedMinimum": OOPStringAttribute.descriptions(["en":"The anticipated minimum amount. "]),
        "isPrimary": OOPStringAttribute.descriptions(["en":"Is this the primary device? "]),
        "offset": OOPStringAttribute.descriptions(["en":"Any variation from the original settings. "]),
        "serialNumber": OOPIntegerAttribute.descriptions(["en":"Unique number of the device meter. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Meter "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Meter "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_meters");
  }
}
mixin(OOPEntityCalls!("ATMMeter"));

unittest {
  version(uim_entities) {
    assert(ATMMeter);
  
  auto entity = ATMMeter;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
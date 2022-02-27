module models.automotive.entities.devices.model;

@safe:
import models.automotive;

// Sub-type of a device class, which may be identified by specific engine option, body styles and other common characteristics. Breaks down further into device model codes.
class DATMDeviceModel : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceModel"));
  
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
        "entityImage": OOPStringAttribute.descriptions(["en":""]),
        "code": OOPStringAttribute.descriptions(["en":"Unique code for this model. "]),
        "deviceBrandId": OOPUUIDAttribute.descriptions(["en":"Brand of the model. "]),
        "deviceClassId": OOPUUIDAttribute.descriptions(["en":"Class of the model. "]),
        "deviceGenerationId": OOPUUIDAttribute.descriptions(["en":"Generation of the model. "]),
        "deviceModelId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "deviceStyleId": OOPUUIDAttribute.descriptions(["en":"Style of the model. "]),
        "deviceTypeId": OOPUUIDAttribute.descriptions(["en":"Type of device for this model. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Model "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Model "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_devicemodels");
  }
}
mixin(OOPEntityCalls!("ATMDeviceModel"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceModel);
  
  auto entity = ATMDeviceModel;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
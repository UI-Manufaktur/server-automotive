module source.models.automotive.entities.devices.models.code;

@safe:
import models.automotive;

// Specific configuration of a device, such as a vehicle of specific generation, body style, engine option and transmission.
class DATMDeviceModelCode : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceModelCode"));
  
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
        "code": OOPStringAttribute.descriptions(["en":"Unique code for this device model. "]),
        "deviceBrandId": OOPUUIDAttribute.descriptions(["en":"Brand of the model code. "]),
        "deviceClassId": OOPUUIDAttribute.descriptions(["en":"Class of the model code. "]),
        "deviceGenerationId": OOPUUIDAttribute.descriptions(["en":"Generation of the model code. "]),
        "deviceModelCodeId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "deviceModelId": OOPUUIDAttribute.descriptions(["en":"Model of the model code. "]),
        "deviceStyleId": OOPUUIDAttribute.descriptions(["en":"Body style of the model code. "]),
        "deviceTypeId": OOPUUIDAttribute.descriptions(["en":"Type of device for this model. "]),
        "specificationId": OOPUUIDAttribute.descriptions(["en":"Specification of this model code. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Model Code "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Model Code "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_devicemodelcodes");
  }
}
mixin(OOPEntityCalls!("ATMDeviceModelCode"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceModelCode);
  
  auto entity = ATMDeviceModelCode;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
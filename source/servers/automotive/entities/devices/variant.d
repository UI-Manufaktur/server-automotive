module models.automotive.entities.devices.variant;

@safe:
import models.automotive;

// Standard variant of a device model code, with special characteristics such as a specific OEM-fitted accessory package or being a limited edition.
class DATMDeviceVariant : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceVariant"));
  
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
        "entityImage": OOPStringAttribute.descriptions(["en":""]),
        "code": OOPStringAttribute.descriptions(["en":"Unique code of the specific variant of this device. "]),
        "deviceBrandId": OOPUUIDAttribute.descriptions(["en":"Brand of the variant. "]),
        "deviceClassId": OOPUUIDAttribute.descriptions(["en":"Class of the variant. "]),
        "deviceGenerationId": OOPUUIDAttribute.descriptions(["en":"Generation of the variant. "]),
        "deviceModelCodeId": OOPUUIDAttribute.descriptions(["en":"Model code of the variant. "]),
        "deviceModelId": OOPUUIDAttribute.descriptions(["en":"Model of the variant. "]),
        "deviceStyleId": OOPUUIDAttribute.descriptions(["en":"Style of the variant. "]),
        "deviceTypeId": OOPUUIDAttribute.descriptions(["en":"Type of device for this variant. "]),
        "deviceVariantId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "specificationId": OOPUUIDAttribute.descriptions(["en":"Specification of this variant. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Variant "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Variant "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_devicevariants");
  }
}
mixin(OOPEntityCalls!("ATMDeviceVariant"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceVariant);
  
  auto entity = ATMDeviceVariant;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
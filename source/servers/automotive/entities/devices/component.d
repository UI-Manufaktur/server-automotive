module models.automotive.entities.devices.component;

@safe:
import models.automotive;

// Physical or logical part of a vehicle or device.
class DATMDeviceComponent : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceComponent"));
  
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
        "entityImage": OOPStringAttribute.descriptions(["en":""]),
        "behavior": OOPStringAttribute.descriptions(["en":"Describes if the component is fixed, movable or replaceable."]),
        "behavior_display": OOPStringAttribute.descriptions(["en":""]),
        "componentDeviceId": OOPUUIDAttribute.descriptions(["en":"Reference to a separate sub-device that the component may represent."]),
        "configurationOptionId": OOPUUIDAttribute.descriptions(["en":"Specific option for the component on the device."]),
        "deviceComponentId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Parent vehicle or device that contains the component."]),
        "deviceMeterId": OOPUUIDAttribute.descriptions(["en":"Reference to a meter that the component may represent."]),
        "deviceSensorId": OOPUUIDAttribute.descriptions(["en":"Reference to a sensor that the component may represent."]),
        "itemName": OOPStringAttribute.descriptions(["en":"Name of the component."]),
        "parentComponentId": OOPUUIDAttribute.descriptions(["en":"Larger component for which the component is a part."]),
        "quantity": OOPStringAttribute.descriptions(["en":"Number of component needed."]),
        "serialNumber": OOPIntegerAttribute.descriptions(["en":"Unique number for component."]),
        "specificationAccessoryId": OOPUUIDAttribute.descriptions(["en":"Accessory for which the component is a part."]),
        "type": OOPStringAttribute.descriptions(["en":"Type of component (standard, option, accessory, device, meter, sensor or custom)."]),
        "type_display": OOPStringAttribute.descriptions(["en":""]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Component"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Component"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":"automotive/"])
      ])
      .registerPath("automotive_devicecomponents");
  }
}
mixin(OOPEntityCalls!("ATMDeviceComponent"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceComponent);
  
  auto entity = ATMDeviceComponent;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
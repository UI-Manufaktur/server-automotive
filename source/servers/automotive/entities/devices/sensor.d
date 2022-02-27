module models.automotive.entities.devices.sensor;

@safe:
import models.automotive;

// Sensor attached to or as part of a vehicle or device. May provide signals of device health or usage.
class DATMDeviceSensor : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceSensor"));
  
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
        "deviceMeterId": OOPUUIDAttribute.descriptions(["en":"Meter on the vehicle or device that is associated with this sensor. "]),
        "deviceSensorId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "IoTSensorReference": OOPStringAttribute.descriptions(["en":"Name of the related IoT sensor for this device. "]),
        "serialNumber": OOPIntegerAttribute.descriptions(["en":"Unique number of the device sensor. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Sensor "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Sensor "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_devicesensors");
  }
}
mixin(OOPEntityCalls!("ATMDeviceSensor")); 

unittest {
  version(uim_entities) {
    assert(ATMDeviceSensor);
  
  auto entity = ATMDeviceSensor;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
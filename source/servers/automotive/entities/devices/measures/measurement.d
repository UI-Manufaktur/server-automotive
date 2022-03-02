module servers.automotive.entities.devices.measures.measurement;

@safe:
import models.automotive;

// Record of usage measurements for a given vehicle or device over time.
class DATMDeviceMeasurement : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceMeasurement"));
  
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
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Device for this device measurement. "]),
        "deviceMeasureId": OOPUUIDAttribute.descriptions(["en":"Type of measurement for this meter. "]),
        "deviceMeasurementId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "deviceMeterId": OOPUUIDAttribute.descriptions(["en":"Meter from which this usage measurement was taken. "]),
        "measuredById": OOPUUIDAttribute.descriptions(["en":"Person who recorded the measurement. "]),
        "measuredOn": OOPTimestampAttribute.descriptions(["en":"Date that the measurement was recorded. "]),
        "measuredValue": OOPStringAttribute.descriptions(["en":"Value of the measurement. "]),
        "serviceOrderId": OOPUUIDAttribute.descriptions(["en":"Parent service order for when this measurement was taken. "]),
        "value": OOPStringAttribute.descriptions(["en":"Value of the measurement. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Measurement "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Measurement "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_devicemeasurements");
  }
}
mixin(OOPEntityCalls!("ATMDeviceMeasurement"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceMeasurement);
  
  auto entity = ATMDeviceMeasurement;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
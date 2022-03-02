module servers.automotive.entities.devices.observations.observation;

@safe:
import models.automotive;

// Important observation on the state of a given vehicle or device, typically resulting from an inspection.
class DATMDeviceObservation : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceObservation"));
  
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
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Vehicle or device for which the observation applies. "]),
        "deviceInspectionId": OOPUUIDAttribute.descriptions(["en":"Parent inspection record for the observation. "]),
        "deviceObservationId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "deviceObservationTypeId": OOPUUIDAttribute.descriptions(["en":"The observation documented for this vehicle or device. "]),
        "serviceAppointmentId": OOPUUIDAttribute.descriptions(["en":"Parent service appointment booked when this observation was documented. "]),
        "serviceOrderId": OOPUUIDAttribute.descriptions(["en":"Parent service order being worked when this observation was documented. "]),
        "severity": OOPStringAttribute.descriptions(["en":"Severity level (observation, warning of failure). "]),
        "severity_display": OOPStringAttribute.descriptions(["en":""]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Observation "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Observation "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_deviceobservations");
  }
}
mixin(OOPEntityCalls!("ATMDeviceObservation"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceObservation);
  
  auto entity = ATMDeviceObservation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
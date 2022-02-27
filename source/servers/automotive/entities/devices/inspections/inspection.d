module models.automotive.entities.devices.inspections.inspection;

@safe:
import models.automotive;

// Record of inspections carried out on a given vehicle or device over time.
class DATMDeviceInspection : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceInspection"));
  
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
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Vehicle or device being inspected."]),
        "deviceInspectionChecklistId": OOPUUIDAttribute.descriptions(["en":"Inspection checklist used for the inspection."]),
        "deviceInspectionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "result": OOPStringAttribute.descriptions(["en":"Outcome of inspection (pending, pass, warning or fail)."]),
        "result_display": OOPStringAttribute.descriptions(["en":""]),
        "serviceAppointmentId": OOPUUIDAttribute.descriptions(["en":"Service appointment at which this inspection was conducted."]),
        "serviceOrderId": OOPUUIDAttribute.descriptions(["en":"Service order being worked during this inspection."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Inspection"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Inspection"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_deviceinspections");
  }
}
mixin(OOPEntityCalls!("ATMDeviceInspection"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceInspection);
  
  auto entity = ATMDeviceInspection;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
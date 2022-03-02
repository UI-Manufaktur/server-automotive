module servers.automotive.entities.devices.inspections.checklist_type;

@safe:
import models.automotive;

// Type of checklist, such as pre-delivery or service.
class DATMDeviceInspectionChecklistType: DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceInspectionChecklistType"));
  
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
        "deviceInspectionChecklistTypeId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]), 
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Inspection Checklist Type"]), 
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]), 
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Inspection Checklist Type"]), 
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]), 
      ])
      .registerPath("automotive_deviceinspectionchecklisttypes");
  }
}
mixin(OOPEntityCalls!("ATMDeviceInspectionChecklistType"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceInspectionChecklistType);
  
  auto entity = ATMDeviceInspectionChecklistType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
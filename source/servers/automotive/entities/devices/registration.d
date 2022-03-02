module servers.automotive.entities.devices.registration;

@safe:
import models.automotive;

// Record of registrations of a specific vehicle or device to specific customers over time.
class DATMDeviceRegistration : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceRegistration"));
  
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
        "comments": OOPStringAttribute.descriptions(["en":"Notes or remarks about the vehicle or device registration. "]),
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities. "]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact. "]),
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Vehicle or device that is registered. "]),
        "deviceLicensePlateId": OOPUUIDAttribute.descriptions(["en":"License plate number for the vehicle or device that is registered. "]),
        "deviceRegistrationId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances "]),
        "role": OOPStringAttribute.descriptions(["en":"Role of the person on the registration (owner, custodian or operator). "]),
        "role_display": OOPStringAttribute.descriptions(["en":""]),
        "validFrom": OOPStringAttribute.descriptions(["en":"First date at which the registration is valid. "]),
        "validTo": OOPStringAttribute.descriptions(["en":"Last date at which the registration is valid. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device Registration "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device Registration "]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("automotive_deviceregistrations");
  }
}
mixin(OOPEntityCalls!("ATMDeviceRegistration"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceRegistration);
  
  auto entity = ATMDeviceRegistration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
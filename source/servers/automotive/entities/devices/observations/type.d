module servers.automotive.entities.devices.observations.type;

@safe:
import models.automotive;

// Type of observation, indicating severity and nature of the observation and typically used for classification and filtering of observations.
class DATMDeviceObservationType : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeviceObservationType"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPIntegerAttribute.descriptions(["en":"Status of the Project Parameter"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPIntegerAttribute.descriptions(["en":"Reason for the status of the Project Parameter"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPIntegerAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "allowSkillUpdateByResource": OOPStringAttribute.descriptions(["en":"Allow resources to update their skills via the Project Finder Mobile app."]),
        "defaultOrganizationalUnit": OOPStringAttribute.descriptions(["en":"Select the default organizational unit that will be used for new resources."]),
        "defaultWorkTemplate": OOPStringAttribute.descriptions(["en":"Select the default work template for new projects."]),
        "invoiceFrequency": OOPStringAttribute.descriptions(["en":"Select the default frequency for generating invoices."]),
        "projectManagerRole": OOPStringAttribute.descriptions(["en":"Shows the default role to be used when a project manager is added to the project team."]),
        "projectResourceRequirementsVisibleToRe": OOPStringAttribute.descriptions(["en":"Select whether project resource requirements are visible to resources."]),
        "resourceAllocationMode": OOPStringAttribute.descriptions(["en":"Select the default method for allocating resources to projects."]),
        "resourceAllocationMode_display": OOPStringAttribute.descriptions(["en":""]),
        "teamMemberRole": OOPStringAttribute.descriptions(["en":"Shows the default role to be used when a team member is added to the project team."]),
      ])
      .registerPath("automotive_deviceolbservationtypes");
  }
}
mixin(OOPEntityCalls!("ATMDeviceObservationType"));

unittest {
  version(uim_entities) {
    assert(ATMDeviceObservationType);
  
  auto entity = ATMDeviceObservationType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
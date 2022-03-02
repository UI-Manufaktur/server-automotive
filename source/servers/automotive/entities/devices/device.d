module servers.automotive.entities.devices.device;

@safe:
import models.automotive;

// Physical piece of equipment of considerable value such as a vehicle or a device such as an excavator, that can be tracked through its entire life cycle of trade, ownership and service and may be related to one or more customers over time.
class DATMDevice : DOOPEntity {
  mixin(OOPEntityThis!("ATMDevice"));
  
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
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "businessOperationId": OOPUUIDAttribute.descriptions(["en":"Department/team at business operation responsible for vehicle or device."]),
        "chassisNumber": OOPIntegerAttribute.descriptions(["en":"Unique number for the vehicle's engine; last 6 digits of the VIN."]),
        "condition": OOPStringAttribute.descriptions(["en":"Current condition of the vehicle or device (excellent, good, fair, poor or unknown)."]),
        "condition_display": OOPStringAttribute.descriptions(["en":""]),
        "deviceBrandId": OOPUUIDAttribute.descriptions(["en":"Brand of the vehicle or device."]),
        "deviceClassId": OOPUUIDAttribute.descriptions(["en":"Class of the vehicle or device."]),
        "deviceGenerationId": OOPUUIDAttribute.descriptions(["en":"Generation of the vehicle or device's model."]),
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "deviceModelCodeId": OOPUUIDAttribute.descriptions(["en":"Configuration of the vehicle or device model."]),
        "deviceModelId": OOPUUIDAttribute.descriptions(["en":"Model of the vehicle or device."]),
        "deviceNumber": OOPIntegerAttribute.descriptions(["en":"Unique number of the vehicle or device."]),
        "deviceStateId": OOPUUIDAttribute.descriptions(["en":"Status of the vehicle or device, which may represent a given combination of inventory, ownership and trade status."]),
        "deviceStyleId": OOPUUIDAttribute.descriptions(["en":"Body style of the vehicle or device."]),
        "deviceTypeId": OOPUUIDAttribute.descriptions(["en":"Type of this vehicle or device."]),
        "deviceVariantId": OOPUUIDAttribute.descriptions(["en":"Specific configuration for this vehicle or device."]),
        "listPrice": OOPStringAttribute.descriptions(["en":"Sale price of vehicle or device."]),
        "listPriceBase": OOPStringAttribute.descriptions(["en":"Value of the List Price in base currency."]),
        "listPriceComments": OOPStringAttribute.descriptions(["en":"Comments regarding the listed price for this vehicle or device."]),
        "registrationNumber": OOPIntegerAttribute.descriptions(["en":"Registration number for this vehicle or device."]),
        "specificationId": OOPUUIDAttribute.descriptions(["en":"Specification tied to this vehicle or device."]),
        "Url": OOPUrlAttribute.descriptions(["en":"Webpage for vehicle or device."]),
        "vendorsStockNumber": OOPIntegerAttribute.descriptions(["en":"Stock number for vehicle or device."]),
        "VIN": OOPStringAttribute.descriptions(["en":"Unique code used to identify an vehicle or device."]),
        "year": OOPStringAttribute.descriptions(["en":"Manufacture year of the vehicle or device."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Device"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Device"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_devices");
  }
}
mixin(OOPEntityCalls!("ATMDevice"));

unittest {
  version(uim_entities) {
    assert(ATMDevice);
  
  auto entity = ATMDevice;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
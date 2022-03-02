module servers.automotive.entities.deals.devices.device;

@safe:
import models.automotive;

// Vehicle or device that is the subject of a deal, which may involve one or more vehicle or device.
class DATMDealDevice : DOOPEntity {
  mixin(OOPEntityThis!("ATMDealDevice"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "actualCost": OOPStringAttribute.descriptions(["en":"Cost of the deal."]),
        "actualCostBase": OOPStringAttribute.descriptions(["en":"Value of the actual cost in base currency."]),
        "actualRevenue": OOPStringAttribute.descriptions(["en":"Revenue gained from the deal."]),
        "actualRevenueBase": OOPStringAttribute.descriptions(["en":"Value of the actual revenue in base currency."]),
        "customerPrice": OOPStringAttribute.descriptions(["en":"Price offered to the customer for the deal."]),
        "customerPriceBase": OOPStringAttribute.descriptions(["en":"Value of the customer price in base currency."]),
        "dealDeviceId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "dealId": OOPUUIDAttribute.descriptions(["en":"Parent deal of this deal device."]),
        "deviceId": OOPUUIDAttribute.descriptions(["en":"Device of interest for this deal."]),
        "estimatedCost": OOPStringAttribute.descriptions(["en":"What the deal is expected to cost."]),
        "estimatedCostBase": OOPStringAttribute.descriptions(["en":"Value of the estimated cost in base currency."]),
        "estimatedRevenue": OOPStringAttribute.descriptions(["en":"The revenue expected to be gained from the deal."]),
        "estimatedRevenueBase": OOPStringAttribute.descriptions(["en":"Value of the estimated revenue in base currency."]),
        "retailPrice": OOPStringAttribute.descriptions(["en":"The retail price of the device in this deal."]),
        "retailPriceBase": OOPStringAttribute.descriptions(["en":"Value of the retail price in base currency."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Deal Device"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Deal Device"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_dealdevices");
  }
}
mixin(OOPEntityCalls!("ATMDealDevice"));

unittest {
  version(uim_entities) {
    assert(ATMDealDevice);

  auto entity = ATMDealDevice;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
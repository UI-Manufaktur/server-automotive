module servers.automotive.entities.deals.devices.addon;

@safe:
import models.automotive;

// Additional product or service offered with a given vehicle or device in a deal.
class DATMDealDeviceAddOn : DOOPEntity {
  mixin(OOPEntityThis!("ATMDealDeviceAddOn"));
  
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
        "actualCost": OOPStringAttribute.descriptions(["en":"Cost of the add-on added to the deal."]),
        "actualCostBase": OOPStringAttribute.descriptions(["en":"Value of the actual cost in base currency."]),
        "customerPrice": OOPStringAttribute.descriptions(["en":"Price the customer was charged for the add-on."]),
        "customerPriceBase": OOPStringAttribute.descriptions(["en":"Value of the customer price in base currency."]),
        "dealDeviceAddOnId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "dealDeviceId": OOPUUIDAttribute.descriptions(["en":"Parent deal for which the add-on is being added."]),
        "itemNumber": OOPIntegerAttribute.descriptions(["en":"Unique number of the add-on."]),
        "retailPrice": OOPStringAttribute.descriptions(["en":"Retail price of the add-on."]),
        "retailPriceBase": OOPStringAttribute.descriptions(["en":"Value of the Retail Price in base currency."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Deal Device Add On"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Deal Device Add On"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_dealdeviceaddons");
  }
}
mixin(OOPEntityCalls!("ATMDealDeviceAddOn"));

unittest {
  version(uim_entities) {
    assert(ATMDealDeviceAddOn);

  auto entity = ATMDealDeviceAddOn;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
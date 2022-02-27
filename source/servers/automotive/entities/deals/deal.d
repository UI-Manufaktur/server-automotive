module models.automotive.entities.deals.deal;

@safe:
import models.automotive;

// Business proposal for the sale of one or more vehicle or device, including optional trade-ins, add-ons and financial terms.
class DATMDeal : DOOPEntity {
  mixin(OOPEntityThis!("ATMDeal"));
  
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
        "actualrevenue_Base": OOPStringAttribute.descriptions(["en":"Value of the actual revenue in base currency."]),
        "businessOperationId": OOPUUIDAttribute.descriptions(["en":"Department/team at dealership responsible for the deal."]),
        "commissionAmount": OOPStringAttribute.descriptions(["en":"The amount of commission paid out for this deal."]),
        "commissionAmountBase": OOPStringAttribute.descriptions(["en":"Value of the commission amount in base currency."]),
        "dealFileId": OOPUUIDAttribute.descriptions(["en":"The file location of this deal."]),
        "dealId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "dealNumber": OOPIntegerAttribute.descriptions(["en":"Unique number of the deal."]),
        "dealStatus": OOPStringAttribute.descriptions(["en":"Status of the deal (scenario, offer or deal)."]),
        "dealStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "estimatedCost": OOPStringAttribute.descriptions(["en":"What the deal is expected to cost."]),
        "estimatedCostBase": OOPStringAttribute.descriptions(["en":"Value of the estimated cost in base currency."]),
        "estimatedRevenue": OOPStringAttribute.descriptions(["en":"How much revenue the deal is expected to make."]),
        "estimatedRevenueBase": OOPStringAttribute.descriptions(["en":"Value of the estimated revenue in base currency."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Deal"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Deal"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
      ])
      .registerPath("automotive_deals");
  }
}
mixin(OOPEntityCalls!("ATMDeal"));

unittest {
  version(uim_entities) {
    assert(ATMDeal);

  auto entity = ATMDeal;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
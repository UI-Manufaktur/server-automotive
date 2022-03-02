import vibe.vibe;
import servers.automotive;

mixin DefaultConfig!("server-automotive");
//mixin ReadConfig;
void main(string[] args) {
	debug writeln("readConfig()");
  // readConfig();

	debug writeln("mixin GetoptConfig");
  //mixin GetoptConfig;
  
	auto router = new URLRouter;	
	debug writeln("SetRouterDefault!()");
  mixin(SetRouterDefault!());

/* 	router
		.get("/login", &serverautomotive.loginPage.request)
		.get("/logout", &serverautomotive.logoutPage.request);
 */
debug writeln("Setting router");
router // Pages
		.get("/automotive", &uimautomotivePage);

	mixin(AddRoutes!("router", "/automotive/dealers/plates/deviceassignments", "uimDealerPlateDeviceAssignments"));
	mixin(AddRoutes!("router", "/automotive/dealers/plates", "uimDealerPlates"));
	mixin(AddRoutes!("router", "/automotive/deals/customers", "uimDealCustomers"));
	mixin(AddRoutes!("router", "/automotive/deals", "uimDeals"));
	mixin(AddRoutes!("router", "/automotive/deals/files", "uimDealFile"));
	mixin(AddRoutes!("router", "/automotive/deals/terms", "uimDealTerm"));
	mixin(AddRoutes!("router", "/automotive/deals/types", "uimDealType"));
	mixin(AddRoutes!("router", "/automotive/deals/devices/addons", "uimDealDeviceAddOn"));
	mixin(AddRoutes!("router", "/automotive/deals/devices", "uimDealDevice"));
	mixin(AddRoutes!("router", "/automotive/devices/brands", "uimDeviceBrand"));
	mixin(AddRoutes!("router", "/automotive/deals/devices", "uimDealDevice"));
	mixin(AddRoutes!("router", "/automotive/deals/devices", "uimDealDevice"));

	router
		.get("/", &uimIndex)
		.get("/login", &uimLoginPage)
		.get("/login2", &uimLogin2Page)
		.get("/register", &uimRegister)
		.get("/logout", &uimLogout)
		.get("/server", &uimServer)
		.get("/sites", &uimSites);

	router // actions
		.post("/login_action", &uimLoginAction)
		.post("/login2_action", &uimLogin2Action)
		.post("/sites/select", &uimSiteSelectAction);

	debug writeln("Create Database");
	auto database = ETBBase.importDatabase(JSBFileBase("../../DATABASES/uim"));
	debug writeln("Found Tenants:", database.count);

	debug writeln("auto dbTentant = database[system]");
	if (auto dbTentant = database["systems"]) {
		debug writeln("Found tentant");

		foreach(name; dbTentant.collectionNames) {
			debug writeln("uimEntityRegistry name:", name, " path:", name);
		
			if (auto entityTemplate = uimEntityRegistry[name]) {
				debug writeln("entityid = ", uimEntityRegistry[name].id);
		
				dbTentant[name].entityTemplate(entityTemplate);
	}}}

	debug writeln("auto dbTentant = database[uim]");
	if (auto dbTentant = database["uim"]) {
		debug writeln("Found tentant");

		foreach(name; dbTentant.collectionNames) {
			debug writeln("uimEntityRegistry name:", name, " path:", name);

			if (auto entityTemplate = uimEntityRegistry[name]) {
				debug writeln("entityid = ", uimEntityRegistry[name].id);
	
				dbTentant[name].entityTemplate(entityTemplate);
	}}}

	debug writeln("database.tenantNames -> ", database.tenantNames);
	foreach(tenant; database.tenantNames) {
		debug writeln(tenant, " with ", database[tenant].collectionNames);
	}

	debug writeln("serverautomotive.database(database)");
  serverautomotive.database(database);
	// serverautomotive.rootPath(rootPath).registerApp(router); 

  mixin(SetHTTP!());
	runApplication();
}

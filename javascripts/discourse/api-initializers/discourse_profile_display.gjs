import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.8.0", (api) => {

  api.includeComponent("user-age-range");
  api.renderInOutlet("user-card-after-metadata", "user-age-range");
  
});

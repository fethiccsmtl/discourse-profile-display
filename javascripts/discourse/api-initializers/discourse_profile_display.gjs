import { apiInitializer } from "discourse/lib/api";
import UserAgeRange from "../components/user-age-range";


export default apiInitializer("1.8.0", (api) => {

  api.renderInOutlet("user-card-after-metadata", UserAgeRange);

});

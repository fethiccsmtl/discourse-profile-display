import { apiInitializer } from "discourse/lib/api";
import CardUserAgeRange from "../components/card-user-age-range";
import ProfileUserAgeRange from "../components/profile-user-age-range";

import { htmlSafe } from "@ember/template";
import { computed } from "@ember/object";

export default apiInitializer("1.8.0", (api) => {

   api.renderInOutlet("user-card-after-metadata", CardUserAgeRange);
   api.renderInOutlet("user-post-names", ProfileUserAgeRange);

});

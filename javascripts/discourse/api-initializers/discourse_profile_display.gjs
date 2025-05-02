import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.8.0", (api) => {

  api.renderInOutlet("user-card-after-metadata", 
    <template>
      {{#if @outletArgs.user.user_fields.[2]}}
        {{#let @outletArgs.user.user_fields.[2] as |age|}}
          <div class="user-age-range">
            {{#if (and (gte age 14) (lte age 17))}}
              Tranche d'âge : 14 - 17 ans
            {{else if (and (gte age 18) (lte age 25))}}
              Tranche d'âge : 18 - 25 ans
            {{else if (gte age 26)}}
              Tranche d'âge : 26 ans et plus
            {{else}}
              Âge non défini
            {{/if}}
          </div>
        {{/let}}
      {{/if}}
    </template>

  );

});

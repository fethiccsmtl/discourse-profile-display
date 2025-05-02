import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.8.0", (api) => {

  api.renderInOutlet("user-card-after-metadata", 
    
    <template>
      {{#if @outletArgs.user.user_fields.[2]}}
        {{#let @outletArgs.user.user_fields.[2] as |age|}}
          <div class="user-age-range">
            {{#if (or (eq age "13") (eq age "14") (eq age "15") (eq age "16") (eq age "17"))}}
              Tranche d'âge : 14 - 17 ans
            {{else if (or (eq age "18") (eq age "19") (eq age "20") (eq age "21") (eq age "22") (eq age "23") (eq age "24") (eq age "25"))}}
              Tranche d'âge : 18 - 25 ans
            {{else if (eq age "26+")}}
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

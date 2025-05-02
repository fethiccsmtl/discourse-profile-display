import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.8.0", (api) => {

  api.renderInOutlet("user-card-after-metadata", 
    
    <template>
  {{#if @outletArgs.user.user_fields.[2]}}
    {{#let @outletArgs.user.user_fields.[2] as |age|}}
      <div class="user-age-range">
        {{#if (eq age "13")}}
          Tranche d'âge : 14 - 17 ans
        {{else}}
          {{#if (eq age "14")}}
            Tranche d'âge : 14 - 17 ans
          {{else}}
            {{#if (eq age "15")}}
              Tranche d'âge : 14 - 17 ans
            {{else}}
              {{#if (eq age "16")}}
                Tranche d'âge : 14 - 17 ans
              {{else}}
                {{#if (eq age "17")}}
                  Tranche d'âge : 14 - 17 ans
                {{else}}
                  {{#if (eq age "18")}}
                    Tranche d'âge : 18 - 25 ans
                  {{else}}
                    {{#if (eq age "19")}}
                      Tranche d'âge : 18 - 25 ans
                    {{else}}
                      {{#if (eq age "20")}}
                        Tranche d'âge : 18 - 25 ans
                      {{else}}
                        {{#if (eq age "21")}}
                          Tranche d'âge : 18 - 25 ans
                        {{else}}
                          {{#if (eq age "22")}}
                            Tranche d'âge : 18 - 25 ans
                          {{else}}
                            {{#if (eq age "23")}}
                              Tranche d'âge : 18 - 25 ans
                            {{else}}
                              {{#if (eq age "24")}}
                                Tranche d'âge : 18 - 25 ans
                              {{else}}
                                {{#if (eq age "25")}}
                                  Tranche d'âge : 18 - 25 ans
                                {{else}}
                                  {{#if (eq age "26+")}}
                                    Tranche d'âge : 26 ans et plus
                                  {{else}}
                                    Âge non défini
                                  {{/if}}
                                {{/if}}
                              {{/if}}
                            {{/if}}
                          {{/if}}
                        {{/if}}
                      {{/if}}
                    {{/if}}
                  {{/if}}
                {{/if}}
              {{/if}}
            {{/if}}
          {{/if}}
        {{/if}}
      </div>
    {{/let}}
  {{/if}}
</template>
  );

});

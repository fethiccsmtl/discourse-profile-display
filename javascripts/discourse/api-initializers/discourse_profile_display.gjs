import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.8.0", (api) => {

  api.renderInOutlet("user-card-after-metadata", 
    
    <template>
  {{#if @outletArgs.user.user_fields.[2]}}
    {{#let @outletArgs.user.user_fields.[2] as |age|}}
      <div class="user-age-range">
        @{{age}}
        {{#if (age 13)}}Tranche d'âge : 14 - 17 ans{{/if}}
        {{#if (age 14)}}Tranche d'âge : 14 - 17 ans{{/if}}
        {{#if (age 15)}}Tranche d'âge : 14 - 17 ans{{/if}}
        {{#if (age 16)}}Tranche d'âge : 14 - 17 ans{{/if}}
        {{#if (age 17)}}Tranche d'âge : 14 - 17 ans{{/if}}

        {{#if (age 18)}}Tranche d'âge : 18 - 25 ans{{/if}}
        {{#if (age 19)}}Tranche d'âge : 18 - 25 ans{{/if}}
        {{#if (age 20)}}Tranche d'âge : 18 - 25 ans{{/if}}
        {{#if (age 21)}}Tranche d'âge : 18 - 25 ans{{/if}}
        {{#if (age 22)}}Tranche d'âge : 18 - 25 ans{{/if}}
        {{#if (age 23)}}Tranche d'âge : 18 - 25 ans{{/if}}
        {{#if (age 24)}}Tranche d'âge : 18 - 25 ans{{/if}}
        {{#if (age 25)}}Tranche d'âge : 18 - 25 ans{{/if}}

        {{#if (age 26)}}Tranche d'âge : 26 ans et plus{{/if}}
      </div>
    {{/let}}
  {{/if}}
</template>
  );

});

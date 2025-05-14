import Component from "@glimmer/component";

export default class UserAgeRange extends Component {
  
  get ageRangeLabel() {
    return this.args.outletArgs?.model?.user_fields_display?.[2];
  }

  <template>
      {{#if this.ageRangeLabel}}
      <div class="user-age-range">
        Tranche d'âge / Age range : {{this.ageRangeLabel}}
      </div>
    {{/if}}
  </template>
}
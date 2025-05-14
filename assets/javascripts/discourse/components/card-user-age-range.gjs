import Component from "@glimmer/component";

export default class UserAgeRange extends Component {
  
  get ageRangeLabel() {
    const rawAge = this.args.outletArgs?.user?.user_fields?.[2]; // Remplace l'ID si nécessaire

    console.log(this.args.outletArgs);
    

    if (!rawAge) return null;

    const age = parseInt(rawAge, 10);
    if (isNaN(age)) {
      if (rawAge.endsWith("-")) return "14 - 17 ans";
      else if (rawAge.endsWith("+")) return "18 - 25 ans";
      else return null;
    }

    if (age <= 17) return "14 - 17 ans";
    else return "18 - 25 ans";
    
  }

  <template>
      {{#if this.ageRangeLabel}}
      <div class="user-age-range">
        Tranche d'âge / Age range : {{this.ageRangeLabel}}
      </div>
    {{/if}}
  </template>
}
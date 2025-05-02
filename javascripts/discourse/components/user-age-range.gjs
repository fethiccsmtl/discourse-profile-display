import Component from "@glimmer/component";

export default class UserAgeRange extends Component {
  
  get ageRangeLabel() {
    const rawAge = this.args.outletArgs?.user?.user_fields?.[2]; // Remplace l'ID si nécessaire

    if (!rawAge) return null;

    const age = parseInt(rawAge, 10);
    if (isNaN(age)) {
      if (rawAge === "26+") {
        return "26 ans et plus";
      } else {
        return "Âge non défini";
      }
    }

    if (age >= 14 && age <= 17) return "14 - 17 ans";
    if (age >= 18 && age <= 25) return "18 - 25 ans";
    if (age >= 26) return "26 ans et plus";

    return "Âge non défini";
  }

  <template>
      {{#if this.ageRangeLabel}}
      <div class="user-age-range">
        Tranche d'âge : {{this.ageRangeLabel}}
      </div>
    {{/if}}
  </template>
}
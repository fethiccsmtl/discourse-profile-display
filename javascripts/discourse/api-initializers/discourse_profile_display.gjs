import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.8.0", (api) => {
  const currentUser = api.getCurrentUser();

  console.log(currentUser)

  api.renderInOutlet("after-header", 
    // Crée un div avec le message approprié
    <template>
    <div class="custom-welcome-banner">
      {{#if currentUser}}
        Welcome back @{{currentUser.username}}
      {{else}}
        Welcome to our community
      {{/if}}
    </div>
  </template>
  );

  api.modifyClass('component:user-card-contents', {
    didInsertElement() {
      this._super(...arguments);
      console.log("card loaded", this);

      const customEl = document.createElement("div");
      customEl.className = "my-custom-usercard-info";
      customEl.textContent = `🎉 Welcome, ${this.user.username}!`;

      // Tu peux cibler un conteneur spécifique, ou ajouter en bas
      this.element.appendChild(customEl);
    }
  });

});


  // api.decorateWidget("user-profile-primary", dec => {
  //     const user = dec.attrs.user;
  //     const fields = user.user_fields || {};
  //     const rawAge = fields["1"]; // Remplacez "1" par l'ID réel du champ "Âge"

  //     if (!rawAge) return;

  //     let age = parseInt(rawAge, 10);
  //     if (isNaN(age)) return;

  //     let ageGroup = "";

  //     if (age >= 14 && age <= 19) {
  //       ageGroup = "14 - 19 ans";
  //     } else if (age >= 20 && age <= 26) {
  //       ageGroup = "20 - 26 ans";
  //     } else if (age >= 27 && age <= 35) {
  //       ageGroup = "27 - 35 ans";
  //     } else if (age >= 36 && age <= 49) {
  //       ageGroup = "36 - 49 ans";
  //     } else if (age >= 50) {
  //       ageGroup = "50 ans et plus";
  //     } else {
  //       ageGroup = "Moins de 14 ans";
  //     }

  //     return {
  //       html: `<div class="user-age-range">Tranche d'âge : ${ageGroup}</div>`
  //     };
  //   });
  

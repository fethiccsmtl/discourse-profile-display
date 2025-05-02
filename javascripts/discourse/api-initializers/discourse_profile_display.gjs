import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.8.0", (api) => {
  const currentUser = api.getCurrentUser();

  // Utilisation de document.createElement au lieu de JSX
  api.renderInOutlet("after-header", () => {
    const div = document.createElement("div");
    div.className = "custom-welcome-banner";

    // Ajouter du texte en fonction de l'utilisateur
    if (currentUser) {
      div.textContent = `Welcome back @${currentUser.username}`;
    } else {
      div.textContent = "Welcome to our community";
    }

    return div;
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
  

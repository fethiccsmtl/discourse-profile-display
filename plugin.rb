# name: discourse-profile-display
# about: Customize Profile display
# version: 0.1
# authors: Fethi Bey Abi Ayad
# url: https://github.com/fethiccsmtl/discourse-profil-display

enabled_site_setting :profil_display_enabled

register_asset "stylesheets/common.scss"

after_initialize do
  # Ajoute un champ séparé : user_fields_display
  add_to_serializer(:user_card, :user_fields_display, respect_plugin_enabled: true) do
    original_fields = object.user_fields || {}
    display_fields = {}

    raw_age = original_fields["2"]

    if raw_age.present?
      age_group =
        if raw_age.match?(/-$/)
          "14 - 17 ans"
        elsif raw_age.match?(/\+$/)
          "18 - 25 ans"
        elsif raw_age.to_i > 0
          age = raw_age.to_i
          age <= 17 ? "14 - 17 ans" : "18 - 25 ans"
        else
          nil
        end

      display_fields["2"] = age_group if age_group
    end

    display_fields
  end
end
require 'rails/generators/named_base'

module VuexTemplate
  module Generators
    class VuexTemplateGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../../templates", __FILE__)
      namespace "vuex_template"
      desc "Generates vuex boiler plate."

      def generate_vuex_boiler_plate
        @underscore_name = file_name.underscore
        @camelize_name = file_name.camelize
        @kebab_name = @underscore_name.gsub("_", "-")

        template "entry.js.erb", "app/javascript/entries/#{@underscore_name}.js"
        template "store.js.erb", "app/javascript/packs/store/#{@underscore_name}.js"
        template "store_configs.js.erb", "app/javascript/packs/store/configs/configs_#{@underscore_name}.js"

        copy_file "component.vue", "app/javascript/packs/components/#{@underscore_name}/#{@underscore_name}_index.vue"
        copy_file "store_state.js", "app/javascript/packs/srore/state/state_#{@underscore_name}.js"
        copy_file "store_getters.js", "app/javascript/packs/srore/getters/getters_#{@underscore_name}.js"
        copy_file "store_mutations.js", "app/javascript/packs/srore/mutations/mutations_#{@underscore_name}.js"
        copy_file "store_actions.js", "app/javascript/packs/srore/actions/actions_#{@underscore_name}.js"
      end
    end
  end
end

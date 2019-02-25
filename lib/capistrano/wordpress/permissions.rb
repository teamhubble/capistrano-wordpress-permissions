module Capistrano
  module Wordpress
    class Permissions < Capistrano::Plugin

      def set_defaults
        set_if_empty(:wordpress_user, :'www-data')
      end

      def define_tasks
        namespace(:wordpress) do
          desc('Changes the releases owner to the Wordpress user.')
          task(:change_owner_to_wordpress) {change_owner(fetch(:wordpress_user))}

          desc('Changes the releases owner to the deployment user.')
          task(:change_owner_to_deploy) {change_owner(fetch(:user))}
        end
      end

      def register_hooks
        before(:'deploy:cleanup', :'wordzpress:change_owner_to_deploy')
        after(:'deploy:finished', :'wordpress:change_owner_to_wordpress')
      end

      private

      def change_owner(user)
        on(roles(:all)) do |host|
          within(deploy_path) do
            sudo(:chown, '-R', "#{user}:#{user}", 'releases/*')
          end
        end
      end
    end
  end
end
module Octokit
  class Client

    # Methods for the Marketplace API
    module Marketplace

      # List all plans for your Marketplace listing
      #
      # @param options [Hash] An customizable set of options
      #
      # @see https://developer.github.com/v3/apps/marketplace/#list-all-plans-for-your-marketplace-listing
      #
      # @return  [Array<Sawyer::Resource>] A list of marketplace
      def find_app_marketplace_plans(options = {})
        opts = ensure_api_media_type(:marketplace, options)
        get "/marketplace_listing/plans", opts
      end

      # Get a user's Marketplace purchases
      #
      # @param options [Hash] An customizable set of options
      #
      # @see https://developer.github.com/v3/apps/marketplace/#get-a-users-marketplace-purchases
      #
      # @return [Array<Sawyer::Resource>] A list of a user's Marketplace purchases
      def find_app_marketplace_purchases(options = {})
        opts = ensure_api_media_type(:marketplace, options)
        get "/user/marketplace_purchases", opts
      end
    end
  end
end

require 'twitter/enumerable'
require 'twitter/utils'

module Twitter
  class GeoResults
    include Twitter::Enumerable
    include Twitter::Utils
    attr_reader :attrs
    alias_method :to_h, :attrs
    deprecate_alias :to_hash, :to_h
    deprecate_alias :to_hsh, :to_h

    # Initializes a new GeoResults object
    #
    # @param attrs [Hash]
    # @return [Twitter::GeoResults]
    def initialize(attrs = {})
      @attrs = attrs
      @collection = @attrs[:result].fetch(:places, []).collect do |place|
        Place.new(place)
      end
    end

    # @return [String]
    def token
      @attrs[:token]
    end
  end
end

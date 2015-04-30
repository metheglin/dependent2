require "dependent1"
require "dependent2/version"

module Dependent2
  # Your code goes here...
  def self.dependent1_version
    ::Dependent1.version
  end
  def self.version
    ::Dependent2::VERSION
  end
end

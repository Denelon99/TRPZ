# frozen_string_literal: true

class Commodity < ApplicationRecord
  belong_to :storage
end

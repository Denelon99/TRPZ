# frozen_string_literal: true

class User < ApplicationRecord
  belong_to :storage
end

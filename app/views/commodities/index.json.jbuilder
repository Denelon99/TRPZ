# frozen_string_literal: true

json.array! @commodities, partial: 'commodities/commodity', as: :commodity

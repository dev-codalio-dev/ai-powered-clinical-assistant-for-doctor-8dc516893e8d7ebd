# frozen_string_literal: true

ActiveAdmin.register Patient do
  rhino_filters
  rhino_permit_params
end

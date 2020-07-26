class InventorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :size_xs, :size_s, :size_m, :size_l, :size_xl, :size_xxl
end

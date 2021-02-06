class Asset < ApplicationRecord
	
	TYPES = {
    house: 'House',
    complex_building: 'ComplexBuilding',
    commercial_unit: 'CommercialUnit'
  }

  validates :type,
            inclusion: {in: Asset::TYPES.values}

  Asset::TYPES.keys.each do |asset_type|
    define_method("#{asset_type}?") { type == asset_type.to_s.classify}
  end

  has_many :pictures, as: :picturable

end

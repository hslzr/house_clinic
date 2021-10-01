class Doctor < ApplicationRecord

  def presentation
    "##{license_number}: #{name}"
  end
end

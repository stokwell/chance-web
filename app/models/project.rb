class Project < ApplicationRecord
  has_many :attachments, as: :attachmentable, dependent: :destroy
  accepts_nested_attributes_for :attachments, allow_destroy: true, reject_if: :all_blank

  has_many :ads, dependent: :destroy
  accepts_nested_attributes_for :ads, allow_destroy: true, reject_if: :all_blank
end

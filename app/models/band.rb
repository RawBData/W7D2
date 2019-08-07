# == Schema Information
#
# Table name: bands
#
#  id                                                              :bigint           not null, primary key
#  name                                                            :text             not null
#  created_at                                                      :datetime         not null
#  updated_at                                                      :datetime         not null
#  yr_started                                                      :integer
#  #<ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition :integer
#

class Band < ApplicationRecord
    validates :name, presence: true
end

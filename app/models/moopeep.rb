class Moopeep < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
        Moopeep.create! row.to_hash
    end
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |moopeep|
        csv << moopeep.attributes.values_at(*column_names)
      end
    end
  end


end
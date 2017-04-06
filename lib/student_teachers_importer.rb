require_relative '../app/models/student_teacher'

module StudentTeachersImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/student_teachers.csv")
    field_names = nil
    StudentTeacher.transaction do
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          student_teachers = StudentTeacher.create!(attribute_hash)
        end
      end
    end
  end
end

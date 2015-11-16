class CreatePublicFiles < ActiveRecord::Migration
  def change
    create_table :public_files do |t|
      t.string :name
      t.timestamps null: false
    end
    add_attachment :public_files, :file_clip
    
    # to upload large images to S3
    slide1 = PublicFile.create! :name => 'public/images/slide1.jpg'
    slide1.file_clip = File.open(Rails.root + 'public/images/slide1.jpg')
    slide1.save!

    slide2 = PublicFile.create! :name => 'public/images/slide2.png'
    slide2.file_clip = File.open(Rails.root + 'public/images/slide2.png')
    slide2.save!

    slide3 = PublicFile.create! :name => 'public/images/slide3.jpg'
    slide3.file_clip = File.open(Rails.root + 'public/images/slide3.jpg')
    slide3.save!
  end
end

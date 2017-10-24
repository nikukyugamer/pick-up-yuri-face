require 'bundler/setup'
require 'opencv'
include OpenCV

class PickUpYuriFace
  INPUT_IMAGE_FILES_DIR = 'input_images'.freeze
  OUTPUT_IMAGE_FILES_DIR = 'output_images'.freeze
  SUFFIX_OF_OUTPUT_FILE = 'face_region'.freeze
  INPUT_IMAGE_FILES_EXTENSION = 'jpg'.freeze # HACK: 決め打ちしている

  def main
    save_output_image_files(input_image_filenames)
  end

  private
  def initialize
    classifier = 'haarcascade_frontalface_alt.xml' # Haar-like 分類器
    @detector = CvHaarClassifierCascade::load(classifier)
  end

  def save_output_image_files(input_filenames)
    input_filenames.each do |input_filename|
      save_output_image_file(input_filename)
    end
  end

  def save_output_image_file(input_filename)
    pick_up_face_region(input_filename).save_image("#{OUTPUT_IMAGE_FILES_DIR}/#{output_image_filename(input_filename)}")
  end

  def pick_up_face_region(input_filename)
    image_data = IplImage.load(input_filename)
    @detector.detect_objects(image_data).each do |face_region|
      image_data.set_roi(face_region)
    end
    image_data
  end

  def input_image_filenames
    Dir.glob("#{INPUT_IMAGE_FILES_DIR}/*").sort # 読み込みの順番は不定である
  end

  def input_image_filename_without_extension(input_filename)
    File.basename(input_filename, '.*')
  end

  def output_image_filename(input_filename)
    %Q(#{input_image_filename_without_extension(input_filename)}_#{SUFFIX_OF_OUTPUT_FILE}.#{INPUT_IMAGE_FILES_EXTENSION})
  end

  def output_image_filenames(input_filenames)
    output_image_filenames = []
    input_image_filenames.each do |input_image_filename|
      output_image_filenames << output_image_filename(input_image_filename)
    end
    output_image_filenames
  end
end

yuuri = PickUpYuriFace.new
yuuri.main

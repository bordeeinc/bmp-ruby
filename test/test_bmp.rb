gem "minitest"
require 'minitest/spec'
require "minitest/autorun"
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require "bmp"
#require 'FileUtils' unless Object.const_defined?('FileUtils')

def clear_dir_except_dot_keep(dir)
  dir_glob = Dir.glob(File.join(dir, '*'))

  FileUtils.rm_rf(dir_glob)
end

def ensure_dir_keep(dir)
  FileUtils.mkdir_p(dir) unless Dir.exist?(dir)
  dir_keep =  File.join(dir, '.keep')
  FileUtils.touch(dir_keep) unless File.exist?(dir_keep)
end

def reset_dir(dir)
  clear_dir_except_dot_keep(dir)
  ensure_dir_keep(dir)
end

class TestBMP < Minitest::Test
  def setup
    @files                = File.join(File.expand_path(File.dirname(__FILE__)), "files")
    @input_dir            = File.join(@files, 'input')
    @output_dir           = File.join(@files, 'output')

    reset_dir(@output_dir)
  end

  def teardown
    reset_dir(@output_dir)
  end

  def test_png_to_bmp_transparent_16
    input_filename  = File.join(@input_dir, 'YVES-framework-transparent-16.png')
    output_filename = File.join(@output_dir, 'YVES-framework-transparent-16.bmp')

    assert File.exist?(input_filename)
    refute File.exist?(output_filename)

    BMP.png_to_bmp(input_filename, output_filename)

    assert File.exist?(output_filename)
  end

  def test_png_to_bmp_transparent_256
    input_filename  = File.join(@input_dir, 'YVES-framework-transparent-256.png')
    output_filename = File.join(@output_dir, 'YVES-framework-transparent-256.bmp')

    assert File.exist?(input_filename)
    refute File.exist?(output_filename)

    BMP.png_to_bmp(input_filename, output_filename)

    assert File.exist?(output_filename)
  end

  def test_png_to_bmp_opaque_16
    input_filename  = File.join(@input_dir, 'YVES-framework-opaque-16.png')
    output_filename = File.join(@output_dir, 'YVES-framework-opaque-16.bmp')

    assert File.exist?(input_filename)
    refute File.exist?(output_filename)

    BMP.png_to_bmp(input_filename, output_filename)

    assert File.exist?(output_filename)
  end

  def test_png_to_bmp_opaque_256
    input_filename  = File.join(@input_dir, 'YVES-framework-opaque-256.png')
    output_filename = File.join(@output_dir, 'YVES-framework-opaque-256.bmp')

    assert File.exist?(input_filename)
    refute File.exist?(output_filename)

    BMP.png_to_bmp(input_filename, output_filename)

    assert File.exist?(output_filename)
  end
end

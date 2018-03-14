require "test_helper"

class ExpressMailerTest < Minitest::Test
  def teardown
    ExpressMailer.configuration = ExpressMailer::Configuration.new
  end

  def test_configure
    ExpressMailer.configure do |config|
      config.default_sender = 'test@test.com'
    end

    assert_equal 'test@test.com', ExpressMailer.configuration.default_sender
  end

  def test_headline_text_color
    ExpressMailer.configure do |config|
      config.info_text_color = '#000'
      config.success_text_color = '#111'
      config.warning_text_color = '#222'
      config.error_text_color = '#333'

      config.info_button_text_color = '#444'
      config.success_button_text_color = '#555'
      config.warning_button_text_color = '#666'
      config.error_button_text_color = '#777'

      config.info_button_background_color = '#888'
      config.success_button_background_color = '#999'
      config.warning_button_background_color = '#aaa'
      config.error_button_background_color = '#bbb'
    end

    info = ExpressMailer::Attributes.new(style: :info)
    success = ExpressMailer::Attributes.new(style: :success)
    warning = ExpressMailer::Attributes.new(style: :warning)
    error = ExpressMailer::Attributes.new(style: :error)

    assert_equal '#000', info.headline_text_color
    assert_equal '#111', success.headline_text_color
    assert_equal '#222', warning.headline_text_color
    assert_equal '#333', error.headline_text_color

    assert_equal '#444', info.button_text_color
    assert_equal '#555', success.button_text_color
    assert_equal '#666', warning.button_text_color
    assert_equal '#777', error.button_text_color

    assert_equal '#888', info.button_background_color
    assert_equal '#999', success.button_background_color
    assert_equal '#aaa', warning.button_background_color
    assert_equal '#bbb', error.button_background_color
  end

  def test_mail_subject_skips_empty_prefix
    ExpressMailer.configure do |config|
      config.subject_prefix = nil
    end

    email = ExpressMailer.info(to: 'test@test.com', subject: 'Testing the subject')
    assert_equal 'Testing the subject', email.subject
  end

  def test_mail_subject_uses_prefix
    ExpressMailer.configure do |config|
      config.subject_prefix = '[Example]'
    end

    email = ExpressMailer.info(to: 'test@test.com', subject: 'Testing the subject')
    assert_equal '[Example] Testing the subject', email.subject
  end

  def test_repaces_double_quotes_in_font_families
    ExpressMailer.configure do |config|
      config.text_font_family = '"Helvetica Neue", "Roboto Condensed"'
      config.headline_font_family = '"Arial Rounded", "Roboto Condensed"'
    end

    assert_equal "'Helvetica Neue', 'Roboto Condensed'", ExpressMailer.configuration.text_font_family
    assert_equal "'Arial Rounded', 'Roboto Condensed'", ExpressMailer.configuration.headline_font_family
  end

  def test_uses_default_to
    ExpressMailer.configure do |config|
      config.default_to = 'me@test.com'
    end

    email = ExpressMailer.info(subject: 'Testing the subject')
    assert_equal ['me@test.com'], email.to
  end

  def test_can_create_an_image
    attributes = ExpressMailer::Attributes.new(image: {url: 'http://test.com/assets/image.png', alt: 'Avatar'})

    assert_equal 'http://test.com/assets/image.png', attributes.image.url
  end
end

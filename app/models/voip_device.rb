class VoipDevice < ActiveRecord::Base

  set_inheritance_column nil
  before_save :set_username

  def self.protocols
    %w( sip iax2 )
  end

  def self.codecs
    %w( ulaw alaw g729 gsm )
  end

  def self.types
    %w( friend peer user )
  end

  def self.dtmf_modes
    %w( rfc2833 info inband auto )
  end

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_inclusion_of :technology, :in => self.protocols
  validates_inclusion_of :dtmfmode, :in => self.dtmf_modes
  validates_inclusion_of :type, :in => self.types
  validates_presence_of :secret #check for length. uniqueness?
  validates_presence_of :allowed_codecs

  validate :codec_validation

  def allowed_codecs=(codecs)
    self.allow = codecs.map(&:strip).reject(&:empty?).join(";")
  end

  def allowed_codecs
    self.allow.nil? ? [] : self.allow.split(";")
  end

  def registered?
    return false if regseconds == 0 or regseconds.nil?
    return true
  end

  private
    def set_username
      self.username ||= self.name
    end

    def codec_validation
      v = (VoipDevice.codecs && allowed_codecs) == allowed_codecs
      errors.add_to_base("Allowed codecs is not included in the list") unless v
    end
end

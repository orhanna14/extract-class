class EmailFormatter

  def initialize(recipients)
    @recipients = recipients
  end

  def strip_spaces_from_emails
    @recipient_list ||= @recipients.gsub(/\s+/, '').split(/[\n,;]+/)
  end
end

class EmailFormatter

  def initialize(recipients)
    @recipients = recipients
  end

  def recipient_list
    @recipient_list ||= @recipients.gsub(/\s+/, '').split(/[\n,;]+/)
  end

  def invalid_recipients
    @invalid_recipients ||= recipient_list.map do |item|
      unless item.match(EMAIL_REGEX)
        item
      end
    end.compact
  end
end

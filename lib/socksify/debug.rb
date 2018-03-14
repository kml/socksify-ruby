module Socksify
  def self.debug=(enabled)
    @@debug = enabled
  end

  def self.debug_debug(str)
    debug("DEBUG", str)
  end

  def self.debug_notice(str)
    debug("NOTICE", str)
  end

  def self.debug_error(str)
    debug("ERROR", str)
  end

  private

  def self.debug(level, str)
    if defined?(@@debug) && @@debug
      puts "#{level} #{now_s} #{str}"
    end
  end

  def self.now_s
    Time.now.strftime('%H:%M:%S')
  end
end

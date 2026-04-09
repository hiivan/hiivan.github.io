# Ruby 3.2 removed `tainted?` — patch it back as a no-op for Liquid 4.0.3 compatibility
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end

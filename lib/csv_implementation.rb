if RUBY_VERSION > "1.9"
  require "csv"
  unless defined? FCSV
    class Object
      FCSV = CSV
      alias_method :FCSV, :CSV
    end
  end
else
  require "fastercsv"
end
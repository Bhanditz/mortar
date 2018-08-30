module Extensions
  module RecursiveOpenStruct
    module Each
      def each(&block)
        self.to_h.each { |k,v| yield k.to_s,v }
      end
    end
  end
end

# Monkey-patch the above module into RecursiveOpenStruct
RecursiveOpenStruct.include Extensions::RecursiveOpenStruct::Each
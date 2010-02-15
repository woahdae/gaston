module Gaston
  class DocumentProxy
    def initialize(target)
      @target = target
    end
    
    def id
      @target[:id]
    end
    
    def method_missing(sym, *args, &block)
      @target[sym]
    end
  end
end

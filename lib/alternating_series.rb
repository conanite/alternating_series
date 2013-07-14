require "alternating_series/version"

module AlternatingSeries
  def series name, values
    class_eval %{
      @@#{name}_values = #{values.inspect}
      @@#{name} = 0

      def #{name}
        my_#{name} = @@#{name}_values[@@#{name}]
        @@#{name} = (@@#{name} + 1) % #{values.size}
        my_#{name}
      end

      def last_#{name}
        @@#{name}_values[@@#{name} - 1]
      end

      def reset_#{name}
        @@#{name} = 0
      end
    }
  end
end

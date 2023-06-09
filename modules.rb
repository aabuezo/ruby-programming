# class Sale
#     def initialize(params)
#         @params = params
#     end

#     def call
#         puts "Params in class: #{@params}"
#     end
# end

# sale = Sale.new("Some data...")
# sale.call

# Module
module Sale
    module FormBuilder  # nested module
        class << self   # to add other methods we need a class
            def call(params)
                subtotal = params[:subtotal]
                state_name = params[:state_name]

                tax_amount = subtotal * self.tax_rate(state_name)
                subtotal + tax_amount
            end

            private
                def tax_rate(state)
                    if state == "AZ"
                        0.065
                    elsif state == "CA"
                        0.087
                    end
                end
        end
    end
end

form_data = {:subtotal => 1000.0, :state_name => "CA"}
p Sale::FormBuilder.call(form_data)


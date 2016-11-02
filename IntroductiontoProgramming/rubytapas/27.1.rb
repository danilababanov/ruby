module Eventful
	def self.included(other)
		other.extend(Macros)
	end

	def add_listener(listener)
		(@listener ||= []) << listener
	end

	def notify_listeners(event, *args)
		(@listener || []).each do |listener|
			listener.public_send("on_#{event}", *args)
		end
	end

	module Macros
		def event(name)
			mod = Module.new
			mod.module_eval(%Q{
				def #{name}(*args)
					notify_listeners(:#{name}, *args)
				end
			})
			include mod
		end
	end
end

class Dradis
	include Eventful

	event :new_contact

	attr_reader :contact_count

	def initialize
		@contact_count = 0
	end

	def new_contact(*)
		@contact_count += 1
		super
	end
end

class ConsoleListener
	def on_new_contact(direction, range)
		puts "DRADIS contact! #{range} kilometers, bearing #{direction}"
	end
end

dradis = Dradis.new
dradis.add_listener(ConsoleListener.new)
dradis.new_contact(120,23000)
dradis.new_contact(240, 42000)
p dradis.contact_count
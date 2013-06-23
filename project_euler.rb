#  untitled.rb
#  
#  Copyright 2013 Wesley Michael <wesley@Aaliyah>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  
module Tools
  class Base
    def self.largestPrimeFactor(num, i)
		if i==num/2
			return num
		elsif num%i==0
			return function3(num/i, 2)
		else
			return function3(num, i+1)
		end	
	end
  end
end


class StdClass < Tools::Base
	def initialize
		
	end
	def function1
		sum = 0
		for i in (3..999)
			if(i%3==0 || i%5==0)
				sum+=i
			end
		end
		print "Problem 1: #{sum}\n"
	
	end
	def function2
		sum = 0
		a = 0
		b =1
		while b < 4000000
			if b%2==0
				sum += b
			end
			c = a+b
			a=b
			b=c
		end
		print "Problem 2: #{sum}\n"
	end
	def function3
		sum = largestPrimeFactor (600851475143 2)
		print "Problem3: #{sum}\n"
	end
	
		
end

x = StdClass.new
x.function1
x.function2
x.function3

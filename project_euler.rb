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



class StdClass 
	def largestPrimeFactor(num, i)
		if i==num/2
			return num
		elsif num%i==0
			return largestPrimeFactor(num/i, 2)
		else
			return largestPrimeFactor(num, i+1)
		end	
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
		sum = largestPrimeFactor(600851475143, 2)
		print "Problem 3: #{sum}\n"
	end
	def function4
		a = 100
		b = 100
		product = 0
		final = 0
		for i in (a..999)
			for j in (b..999)
				product = a*b
				string = product.to_s()
				if ((string[0..string.size()/2-1].eql? string[string.size()/2..string.size()].reverse) && product > final)
					final = product
				end
				b+=1
			end
			a+=1
			b=a
		end
		print "Problem 4: #{final}\n"
	end
	def function5
		a = 20
		b = Array(1..20)
		found = 0
		while found < 20
			for i in (1..20)
				if a%b[i-1] == 0
					found += 1
				end
			end
			if found < 20
				found = 0
				a+=20
			end			
		end
		print "Problem 5: #{a}\n"
		
	end
	
		
end

x = StdClass.new
#x.function1
#x.function2
#x.function3
#x.function4
#x.function5

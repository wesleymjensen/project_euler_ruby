#  project_euler.rb
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
	def function6
		sum_sq = 0
		sq_sum = 0
		for i in (1..100)
			sq_sum += i*i
			sum_sq += i
		end
		sum_sq *= sum_sq
		print "Problem 6: #{sum_sq-sq_sum}\n"
	end
	def function7
		count = 1
		results = [2]
		next_num = 1
		prime = true
		while count < 10001
			next_num+=2
			for i in (0..results.size()-1)
				if next_num%results[i] == 0
					prime = false
				end
			end
			if prime
				count+=1
				results.push(next_num)
			end
			prime=true
		end
		print "Problem 7: #{next_num}\n"
	end
	def function8
		string = "73167176531330624919225119674426574742355349194934\
				 96983520312774506326239578318016984801869478851843\
				 85861560789112949495459501737958331952853208805511\
				 12540698747158523863050715693290963295227443043557\
				 66896648950445244523161731856403098711121722383113\
				 62229893423380308135336276614282806444486645238749\
				 30358907296290491560440772390713810515859307960866\
				 70172427121883998797908792274921901699720888093776\
				 65727333001053367881220235421809751254540594752243\
				 52584907711670556013604839586446706324415722155397\
				 53697817977846174064955149290862569321978468622482\
				 83972241375657056057490261407972968652414535100474\
				 82166370484403199890008895243450658541227588666881\
				 16427171479924442928230863465674813919123162824586\
				 17866458359124566529476545682848912883142607690042\
				 24219022671055626321111109370544217506941658960408\
				 07198403850962455444362981230987879927244284909188\
				 84580156166097919133875499200524063689912560717606\
				 05886116467109405077541002256983155200055935729725\
				 71636269561882670428252483600823257530420752963450"
		max = 0
		for i in (0..string.size()-6)
			product = (string[i].to_i)*(string[i+1].to_i)*(string[i+2].to_i)*(string[i+3].to_i)*(string[i+4].to_i)
			if product > max
				max = product
			end
		end
		print "Problem 8: #{max}\n"
	end
	
		
end

x = StdClass.new
#x.function1
#x.function2
#x.function3
#x.function4
#x.function5
#x.function6
#x.function7
x.function8

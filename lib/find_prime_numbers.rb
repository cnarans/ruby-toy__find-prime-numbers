# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def find_prime_numbers(num)
	primes = [];
	for i in 0..num
		primes.push(i)
	end
	primes[1]=0
	for i in 2..num
		if primes[i]!=0
			j=i*2
			while j<=num
				primes[j]=0
				j+=i
			end
		end
	end
	primes.delete(0)
	return primes
end
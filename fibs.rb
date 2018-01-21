def fibs(n)
  return [0] if n <= 1
  seq = [0,1]
  (n-2).times do
    seq.push(seq[-2] + seq[-1])
  end
  seq
end

def fibs_rec(n)
  return [0] if n <= 1
  return [0,1] if n == 2
  fibs_rec(n-1).push(fibs_rec(n-1)[-2] + fibs_rec(n-1)[-1])
end

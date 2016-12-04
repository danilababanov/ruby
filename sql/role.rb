def my_role(r)
  case r
  when 1 then 'User'
  when 2 then 'Moder'
  when 3 then 'Admin'
  else
    'No role!'
  end
end

p my_role(1)
p my_role(9)

p '='*30

def my_role2(r)
  role = {1 => 'User', 2 => 'Moder', 3 => 'Admin'}
  role.has_key?(r) ? role[r]  : 'No role!'
end

p my_role2(1)
p my_role2(9)
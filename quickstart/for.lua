tab = {key1 = "value1", key2 = "value2", key3 = "value3", "value5", "value6", "value7"}

for k, v in pairs(tab) 
do
    print(k.."-"..v)
end

print("--------")

tab.key1 = nil

for k, v in pairs(tab)
do
    print(k.."-"..v)
end

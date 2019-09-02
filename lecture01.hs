-- tiedosto kaannetaan haskell shellissa ':l tiedostonimi'

--funktiio
myFunc x = x+x ++ "result of: " ++ (show x)
myFunc 1 = "does not compute"

--lista
--kutsutaan shellista 3:2:1:[]
--vain saman tyyppisia listaan
myList = [1, 2, 3]

-- tarvii elsen, ei toimi
--virhe x = if x < 20 then 2*x
--
-- funktion tyypin tarkistus ':t funktionNimi'

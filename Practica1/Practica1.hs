
-- Funcion que calcula el punto medio dados 2 puntos
puntoMedio :: (Fractional a) => (a, a) -> (a, a) -> (a, a)
puntoMedio (x1, y1) (x2, y2) = ((x1 + x2) / 2, (y1 + y2) / 2)

-- Funcion recursiva que calcule la siguiente suma:
-- 1² + 2² + 3² + 4² + ... + (n-1)² + n²
sumaCuadrados :: Integer -> Integer
sumaCuadrados 1 = 1
sumaCuadrados n = n^2 + sumaCuadrados (n - 1)

main :: IO ()
main = do
       print "Punto Medio"
       print $ puntoMedio (1, 1) (2, 2)

       print "Suma de cuadrados"
       print $ sumaCuadrados 10


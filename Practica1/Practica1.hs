
-- Funcion que calcula el punto medio dados 2 puntos
puntoMedio :: (Fractional a) => (a, a) -> (a, a) -> (a, a)
puntoMedio (x1, y1) (x2, y2) = ((x1 + x2) / 2, (y1 + y2) / 2)

-- Funcion recursiva que calcule la siguiente suma:
-- 1² + 2² + 3² + 4² + ... + (n-1)² + n²
sumaCuadrados :: Integer -> Integer
sumaCuadrados 1 = 1
sumaCuadrados n = n^2 + sumaCuadrados (n - 1)

-- Use guardias para codificar una funcion que dada una 
-- temperatura retorne una cadena que diga si dicha
-- temperatura es:
-- <= 22 "fria"
-- >= 23 y <27 "agradable"
-- >=28 "calentura"
temperatura :: Float -> String
temperatura t
  | t < 22 = "fria"
  | t < 27 = "agradable"
  | otherwise = "calentura"

-- use tuplas para codificar una funcion que returne una
-- tupla con el resultado de sumar 2 numeros complejos
-- c1 = (re1, im1) c2 = (re2, im2)
-- c1 + c2 = (re1 + re2, im1 + im2)
sumaComplejos :: (Float, Float) -> (Float, Float) -> (Float, Float)
sumaComplejos (re1, im1) (re2, im2) = (re1 + re2, im1 + im2)

main :: IO ()
main = do
       putStrLn "Punto Medio"
       print $ puntoMedio (1, 1) (2, 2)
       putStrLn ""
       putStrLn "Suma de cuadrados"
       print $ sumaCuadrados 10
       putStrLn ""
       putStrLn "Temperatura"
       print $ temperatura 32.5
       putStrLn ""
       putStrLn "Complejos"
       print $ sumaComplejos (5, 8) (15, -11)


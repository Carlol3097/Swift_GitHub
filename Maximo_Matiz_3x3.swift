import Foundation

print("MATRIZ 3x3 - ENCONTRAR VALOR MÁXIMO")
print("-----------------------------------")

var matriz: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: 3)

// Llenar matriz
for i in 0..<3 {
    for j in 0..<3 {
        print("Ingrese el número en la posición [\(i)][\(j)]: ", terminator: "")
        if let input = readLine(), let numero = Int(input) {
            matriz[i][j] = numero
        }
    }
}

// Mostrar matriz
print("\nMatriz ingresada:")
for i in 0..<3 {
    for j in 0..<3 {
        print(" \(matriz[i][j]) ", terminator: "")
    }
    print()
}

// Encontrar valor máximo y su posición
var maximo = matriz[0][0]
var posicionI = 0
var posicionJ = 0

for i in 0..<3 {
    for j in 0..<3 {
        if matriz[i][j] > maximo {
            maximo = matriz[i][j]
            posicionI = i
            posicionJ = j
        }
    }
}

print("\n--- RESULTADOS ---")
print("El valor máximo es: \(maximo)")
print("Se encuentra en la posición: [\(posicionI)][\(posicionJ)]")
print("Fila: \(posicionI + 1), Columna: \(posicionJ + 1)")
programa {
  inclua biblioteca Util --> y

  funcao inicio() {
    inteiro vetor[100], temp
    para (inteiro i = 0; i < 100; i++) vetor[i] = y.sorteia(0,99)

    inteiro j, n = y.numero_elementos(vetor)

    para (inteiro i = 0; i < n; i++) {
      j = y.sorteia(0,5)

      temp = vetor[i]
      vetor[i] = vetor[j]
      vetor[j] = temp
    }

    escreva(vetor, "\n")

    inteiro menor, lil_pos, iteracoes = (n+(n*n))/2 //SÓ PRA CONTAR QUANTAS VEZES O LOOP É RODADO

    /*
    S = (a0 + an)*n/2
    S = (1 + 100)*100/2
    S = (100 + 100^2)/2
    S = (n + n^2)/2
    */

    para (inteiro i = 0; i < n; i++) {
      menor = vetor[n-1] //(RE)INICIA A VARIÁVEL MENOR

      para (inteiro j = i; j < n; j++) {

        se (vetor[j] <= menor) {
          menor = vetor[j]
          lil_pos = j
        }
      }

      temp = vetor[i]
      vetor[i] = vetor[lil_pos]
      vetor[lil_pos] = temp

    }

    escreva(vetor, "\nIteracoes: ", iteracoes)
  }
}
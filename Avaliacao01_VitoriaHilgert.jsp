<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Exercício 1</h1>
	<%
	int[] vetor = {7, 5, 3, 60, 800, 555};
	int maior = vetor[0];
	int menor = vetor[0];
	for (int ind : vetor) {
		if (ind > maior) {
			maior = ind;
		}
		if (ind < menor) {
			menor = ind;
		}
	}
	out.println("Mínimo = " + menor + "<br>");
	out.println("Máximo = " + maior + "<br>");
	
	%>
	
	<h1>Exercício 2</h1>
	<%
	int[] vetor2 = {7, 5, 3, 60, 800, 555};
	int maior2 = vetor2[0];
	int seg_maior = vetor2[0];
	for (int ind : vetor2) {
		if (ind > maior2) {
			maior2 = ind;
		}
		if (ind > seg_maior && ind < maior2) {
			seg_maior = ind;
		}
	}
	out.println("Maior elemento = " + maior2 + "<br>");
	out.println("Segundo maior elemento = " + seg_maior + "<br>");
	
	%>
	
	<h1>Exercício 3</h1>
	<%
	int[] vetor3 = {7, 8, 8, 9, 9};
	int[] vetor_aux = new int[vetor3.length];
	int nvetor = 0;
	out.println("Resultado = ");
	for (int ind: vetor3) {
		boolean entrou = false;
		for (int ind2 : vetor_aux) {
			if (ind == ind2) {
				entrou = true;
			}
		}
		if (entrou == false) {
			out.println(ind + " ");
			vetor_aux[nvetor] = ind;
			nvetor++;
		}
		
	}

	
	%>
	
	<h1>Exercício 4</h1>
	<%
	int[] vetor4 = {0, 1, 2, 4, 7, 9, 11};
	int x = 6;
	int piso = vetor4[0];
	for (int ind : vetor4) {
		if (ind > piso && ind < x) {
			piso = x;
		}
	}
	out.println("Piso = " + x + "<br>");
	%>
	
	<h1>Exercício 5</h1>
	<%
	int[] vetor5 = {1, 2, 4, 5, 5, 5, 5, 7, 11};
	int x2 = 5;
	int num_ocorrencias = 0;
	for (int ind : vetor5) {
		if (ind == x2) {
			num_ocorrencias++;
		}
	}
	out.println("Número de ocorrências de " + x2 + " = " + num_ocorrencias + "<br>");
	%>
	
	<h1>Exercício 6</h1>
	<%
	int[] vetor6 = {3, 4, 3, 4, 5, 5, 5, 6, 7, 7, 6, 5};
	int x3 = 5;
	out.println("Frequência: <br>");
	for (int i = 1; i <= x3; i++) {
		int cont_freq = 0;
		for (int ind : vetor6) {
			if (ind == i) {
				cont_freq++;
			}
		}
		out.println(i + " = " + cont_freq + " vezes <br>");
		
	}
	%>
	
	<h1>Exercício 7</h1>
	<%
	int[] vetor7 = {7, 9, 11, 1, 2, 4, 0};
	out.println("Líderes = ");
	for (int i = 0; i < vetor7.length; i++) {
		if (i == 0) {
			if (vetor7[i] >= vetor7[i+1]) {
				out.println(vetor7[i] + " ");
			}
		} else if (i == (vetor7.length - 1)) {
			out.println(vetor7[i]);
		} else if (vetor7[i] >= vetor7[i-1] && vetor7[i] >= vetor7[i+1]) {
			out.println(vetor7[i] + " ");
		}
	}
	%>



</body>
</html>


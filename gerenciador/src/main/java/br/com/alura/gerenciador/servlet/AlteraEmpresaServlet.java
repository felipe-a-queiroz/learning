package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AlteraEmpresaServlet
 */
@WebServlet("/alteraEmpresa")
public class AlteraEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);
		String nome = request.getParameter("nome");
		String dataAbertura = (String) request.getParameter("dataAbertura");
		
		Banco banco = new Banco();
		Empresa empresa = banco.buscaEmpresaPeloId(id);
		
		empresa.setNome(nome);
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		try {
			empresa.setDataAbertura(sdf.parse(dataAbertura));
		} catch (ParseException e) {
			throw new ServletException(e);
		}
		
		response.sendRedirect("listaEmpresas");
	}

}

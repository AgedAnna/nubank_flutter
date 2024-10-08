import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: NubankHomePage(),
    );
  }
}

class NubankHomePage extends StatelessWidget {
  const NubankHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE),
        leading: IconButton(
          icon: const Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.question_mark_rounded,
                color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.mark_email_read_outlined,
                color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outline, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Conta',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ],
            ),

            SizedBox(height: 10),
            Text(
              'R\$ 1000,00',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconButton(Icons.pix, 'Área Pix'),
                _buildIconButton(Icons.money, 'Pagamentos'),
                _buildIconButton(Icons.qr_code, 'QRCode'),
                _buildIconButton(Icons.attach_money, 'Transferir'),
              ],
            ),
            SizedBox(height: 30),

            // Seção Meus Cartões
            _buildMyCardSection(),
            SizedBox(height: 30),

            // Seção Guarde seu dinheiro em caixinhas
            _buildMyNewCardSection('Guarde seu dinheiro em caixinhas',
                'Acessando a área de planejamento'),
            SizedBox(height: 30),

            // Seção Fatura
            _buildInvoiceSection(context),
            SizedBox(height: 30),

            // Seção Emprestimo
            _buildLoanCardSection(),
            SizedBox(height: 30),

            // Seção Descubra Mais
            _buildDiscoverMoreSection(context),
          ],
        ),
      ),
    );
  }

  // Widget para os botões de ícones
  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFE8DEF8),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(icon, color: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {},
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  // Widget para a seções de cartões
  Widget _buildMyCardSection() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFE8DEF8),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Icon(
            Icons.credit_card,
            size: 24,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          SizedBox(width: 8),
          Text(
            'Meus Cartões',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para a seções de "Guarde seu dinheiro"
  Widget _buildMyNewCardSection(String title, String subtitle) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFE8DEF8),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8A05BE),
            ),
          ),
          SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 86, 84, 87).withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para a seções de cartao de credito
  Widget _buildInvoiceSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey[300]!, width: 1),
          bottom: BorderSide(color: Colors.grey[300]!, width: 1),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cartão de Crédito',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
              Icon(Icons.arrow_forward_ios,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Fatura Fechada',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          SizedBox(height: 8),
          Text(
            'R\$ 150,00',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'Vencimento dia 15',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text('Renegociar'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE8DEF8),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para a seções de emprestimo
  Widget _buildLoanCardSection() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!, width: 1),
        ),
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Empréstimo',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.arrow_forward_ios,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Tudo certo! Você está em dia',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  // Widget para a seção Descubra Mais
  Widget _buildDiscoverMoreSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Descubra Mais',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Colors.black87,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Image.asset(
            'assets/images/seguroVida.png',
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFE8DEF8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Seguro de vida',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 5),
                Text(
                  'Cuide bem de quem você ama de um jeito simples.',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Conhecer'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF8A05BE),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

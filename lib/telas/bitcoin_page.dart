import 'package:flutter/material.dart';

import '../components/botao.dart';
import '../components/item_component_bitcoin.dart';
import '../model/completo.dart';

class BitcoinPage extends StatefulWidget {
  const BitcoinPage({super.key});

  @override
  State<BitcoinPage> createState() => _BitcoinPageState();
}

class _BitcoinPageState extends State<BitcoinPage> {
  @override
  Widget build(BuildContext context) {

    final completo = ModalRoute.of(context)!.settings.arguments as Completo;

    irMoedas() {
      Navigator.pushNamed(context, '/moedas_page', arguments: completo);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Finanças de Hoje'),
        backgroundColor: const Color.fromARGB(255, 28, 75, 29),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text('BitCoin',
              style: TextStyle(
              fontSize: 20
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 54, 52, 52), width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ItemComponentBitcoin(item: completo.bitcoin!.blockchain,)
                        ),
                        Expanded(
                          child: ItemComponentBitcoin(item: completo.bitcoin!.coinbase,)
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ItemComponentBitcoin(item: completo.bitcoin!.bitStamp,)
                        ),
                        Expanded(
                          child: ItemComponentBitcoin(item: completo.bitcoin!.foxBit,)
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ItemComponentBitcoin(item: completo.bitcoin!.mercadoBitcoin,)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Botao(
            texto: 'Pagina Principal',
            funcao: irMoedas,
          )
        ],
      ),
    );
  }
}
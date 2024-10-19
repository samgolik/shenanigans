import 'package:flutter/material.dart';

class BetForm extends StatefulWidget {
  const BetForm({super.key});

  @override
  State<BetForm> createState() => _BetFormState();
}

class _BetFormState extends State<BetForm> {
  final TextEditingController scenarioController = TextEditingController();
  final TextEditingController oddsController = TextEditingController();
  final TextEditingController expirationController = TextEditingController();

  String selectedPerson = '';

  void _onPersonSelected(String person) {
    setState(() {
      selectedPerson = person;
    });
  }

  @override
  void dispose() {
    scenarioController.dispose();
    oddsController.dispose();
    expirationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: Colors.black),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(6, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Scenario',
            style: TextStyle(
              fontFamily: 'Archivo',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: scenarioController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(color: Colors.black),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'People',
            style: TextStyle(
              fontFamily: 'Archivo',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildPersonChip('Sam', Colors.white),
              const SizedBox(width: 12),
              _buildPersonChip('Preston', Colors.white),
              const SizedBox(width: 12),
              _buildPersonChip('Eric', Colors.white),
              const SizedBox(width: 12),
              _buildPersonChip('Justin', Colors.white),
            ],
          ),
          const SizedBox(height: 23),
          const Text(
            'Set Odds',
            style: TextStyle(
              fontFamily: 'Archivo',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: oddsController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(color: Colors.black),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Expiration',
            style: TextStyle(
              fontFamily: 'Archivo',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: expirationController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(color: Colors.black),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 76),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Handle bet confirmation (e.g., form submission)
                String scenario = scenarioController.text;
                String odds = oddsController.text;
                String expiration = expirationController.text;

                // Add your logic here (e.g., validating or submitting the form)
                print('Bet confirmed with:');
                print('Scenario: $scenario');
                print('Selected person: $selectedPerson');
                print('Odds: $odds');
                print('Expiration: $expiration');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(223, 47),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: const BorderSide(color: Colors.black, width: 2),
                ),
                elevation: 2,
                shadowColor: Colors.black,
              ),
              child: const Text(
                'Confirm Bet',
                style: TextStyle(
                  fontFamily: 'Archivo',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPersonChip(String name, Color color) {
    return GestureDetector(
      onTap: () => _onPersonSelected(name), // Handle chip selection
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: selectedPerson == name ? Colors.purple[400] : color,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.black, width: 2),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Text(
          name,
          style: const TextStyle(
            fontFamily: 'Archivo',
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

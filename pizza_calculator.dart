import 'dart:io';

void main() {
  double total = 0;
  String choice = '';

  while (choice != 'no') {
    print('\nPizza Menu');
    print('Small  - \$5');
    print('Medium - \$7');
    print('Large  - \$10');

    stdout.write('Enter pizza size (small/medium/large): ');
    String size = stdin.readLineSync()!.toLowerCase();

    stdout.write('Enter quantity: ');
    int quantity = int.parse(stdin.readLineSync()!);

    double price;

    switch (size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print('Invalid pizza size!');
        continue;
    }

    total += price * quantity;

    print('Subtotal: \$${price * quantity}');

    stdout.write('Order another pizza? (yes/no): ');
    choice = stdin.readLineSync()!.toLowerCase();
  }

  print('\nTotal order price: \$${total.toStringAsFixed(2)}');
}


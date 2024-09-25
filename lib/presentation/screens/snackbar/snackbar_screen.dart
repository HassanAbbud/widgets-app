import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('Hello world'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);
  }
  
  void openDialog( BuildContext context ) {

    showDialog(
      context: context, 
      barrierDismissible: false, //Force to close with buttons
      builder: (context) => AlertDialog(
        title: const Text('¿Are you sure?'),
        content: const Text('Ex sit ea est in. Aliqua cillum amet tempor id officia tempor adipisicing amet commodo aliqua. Ut eiusmod cillum nulla sit ut non minim laboris cupidatat exercitation minim magna pariatur est. Nisi aute ea id enim sint occaecat aute adipisicing duis qui nisi. Nulla cillum nulla eiusmod enim magna sint eu dolor occaecat cupidatat.'),
        actions: [
          TextButton( onPressed: ()=> context.pop(), child: const Text('Cancel')),
          
          FilledButton( onPressed: ()=> context.pop(), child: const Text('Confirm')),
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars and dialogues"),
      ),

       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Aute amet dolore ipsum ex adipisicing incididunt pariatur eiusmod ipsum duis voluptate commodo qui. Non anim nulla enim do sunt minim anim sit nostrud sunt. Ex culpa ipsum voluptate ut qui Lorem ad. Consequat dolor duis nulla ipsum ea. Nostrud nulla nulla ad pariatur ullamco cupidatat aliquip irure dolore amet deserunt nulla veniam. Id ut duis nulla in commodo elit. Laboris ea ipsum aute excepteur quis magna elit est incididunt veniam deserunt ad veniam.')
                  ]
                );
              }, child: const Text('Licenses')),

            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Show dialogue'))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined ),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
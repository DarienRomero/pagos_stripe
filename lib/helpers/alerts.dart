part of 'helpers.dart';

mostrarAlerta(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      title: Text("Realizando pago"),
      content: LinearProgressIndicator(),
    )
  );
}
mostrarPagoExitoso(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      title: Text("Tu pago se realizó con exito"),
      content: MaterialButton(
        onPressed:(){
          Navigator.pop(context);
        },
        child: Text("Listo")
      )
    )
  );
}
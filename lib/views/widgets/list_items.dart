import 'package:flutter/material.dart';
import 'package:taxi/views/widgets/all.dart';
import '../../constants/all.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key, this.title, this.icon}) : super(key: key);

  final String? title;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: AppColors.grey),
        ),
      ),
      child: ListTile(
        title: Text(
          title ?? '',
          style: AppTextStyle.heading2.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.greyText,
            fontSize: 17.0,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            // je t'explique un peu dans l'autre fichier pickfile tu utilise un stateful widget dans tu peut incrementer
            // la valeur du compteur dessus mais ici tu ne pourras pas car de un c'est un stateless widget meme si la valeur sincremente
            // tu ne peux la mettre a jour cote UI
            /// ah ok je vois un peu mieux
            /// en plus de cela quand tu utilise une fonction callback cela suppose que tu quitte d'une page 01 vers une page 02
            /// ou d'une page 02 vers une page 01 dans ce cas tu peux envoyer les valeurs d'une page vers l'autre
            /// mais dans ton cas je pense que on reste dans la meme juste que l'on appelle une fonction dans une autre classe c'est ca oUI oui en fait
            /// en fait j'ai pas voulu mettre tout sur la meme pas genre je veux creer des composants reutilisables en fragmentant les
            /// differents widgets
            /// ok pas de soucis tu peux lancer l'application et essayer m'expliquerle flow apres dacc 2 sec je lance.
          },
          icon: icon!,
        ),
      ),
    );
  }
}

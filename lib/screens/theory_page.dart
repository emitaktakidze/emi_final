import 'package:flutter/material.dart';

class TheoryPage extends StatelessWidget {
  const TheoryPage({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("თეორია"),
        ),
        body: Column(
          children: [
            const SizedBox(height: 16,),
            Container(
              alignment: Alignment.center,
              height: 200,
              margin: const EdgeInsets.symmetric(
                horizontal:16,
              ),
              decoration: const BoxDecoration(
                color:Colors.cyan,
                borderRadius:BorderRadius.all(Radius.circular(20),
                ),
              ),
              child: Container(
                width: 200,
                padding: const EdgeInsets.all(10),
                child:const  Image(
                  image: NetworkImage(
                      "https://eslbrains.com/wp-content/uploads/2019/03/How-to-fight-cyberbullying.png"),
                ),
              ),
            ),
            const SizedBox(height: 24,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "რა არის კიბერბულინგი? ",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    "კიბერ დანაშაულს წარმოადგენს ნებისმიერი მართლსაწინააღმდეგო ქმედება, რომელიც ჩადენილია კომპიუტერული სისტემის გამოყენებით კიბერსივრცეში. 21–ე საუკუნეში სწრაფი ტექნოლოგიური პროგრესის პარალელურად, კიბერ რისკების რაოდენობა მნიშვნელოვნად მატულობს.",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}

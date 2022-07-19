import 'package:flutter/material.dart';

class CustomScrollView_practice extends StatefulWidget {
  const CustomScrollView_practice({Key? key}) : super(key: key);

  @override
  State<CustomScrollView_practice> createState() => _CustomScrollView_practiceState();
}

class _CustomScrollView_practiceState extends State<CustomScrollView_practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            //pinned => appbar가 항상 보이게 할 지 아닌지를 정하는 용도
            //true => appbar를 하단으로 스크롤 하던 말던 항상 고정되어 보이게 함
            //false => appbar를 하단으로 스크롤 하면 안 보이게 만듦
            floating: true,
            //floating  => appbar가 어디서 보이게 할 지 정하는 용도
            //true => appbar를 최상단에서 올리지 않더라도 appbar가 나옴
            //false => appbar를 최상단에서 올려야 appbar가 나옴
            snap: false,
            //floating의 값이 true일 때에만 true값을 줄 수 있다
            //true : 내린 상태에서 올리다가 멈추면 flexibleSpace가 appbar안으로 들어감
            //false : 내린 상태에서 올리다가 멈춰도 flexibleSpace가 안으로 들어가지 않음
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flexible"),
            ),
            title:Text("CustomScrollView"),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Text(("Sliver"),style: TextStyle(color:Colors.red,fontSize: 600),),
            ],
          ))
        ],
      ),
    );
  }
}

/*appBar: AppBar(
        backgroundColor: Colors.black12,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          //icon: SvgPicture.asset("assets/icons/menu.svg"),
          icon: Icon(Icons.menu, color:Colors.white,),

        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: defaultPadding / 2),
            Text(
              "VIDEVET",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: customIcon,
              onPressed: (){
                setState(() {
                  if (customIcon.icon == Icons.search) {
                    customIcon = const Icon(Icons.cancel);
                    customSearchBar = const ListTile(
                      leading: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 28,
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'type in journal name...',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                    // Perform set of instructions.
                  } else {
                    customIcon = const Icon(Icons.search);
                    customSearchBar = const Text('My Personal Journal');
                  }
                });
              },
          ),
          IconButton(
            icon: Icon(IconlyBold.notification, color: Colors.white,),
            onPressed: () {},
          ),
        ],
      ),*/

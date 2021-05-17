part of 'widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  CustomBottomNavBar({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Color(0xff03203f),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                context.bloc<ProgramCubit>().getPrograms();
                ProgramState state = context.bloc<ProgramCubit>().state;
                if (state is ProgramLoaded) {
                  onTap(0);
                }
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/home' +
                          (selectedIndex == 0 ? '.png' : '_normal.png')),
                      fit: BoxFit.contain)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/rp' +
                          (selectedIndex == 1 ? '.png' : '_normal.png')),
                      fit: BoxFit.contain)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/hand' +
                          (selectedIndex == 2 ? '.png' : '_normal.png')),
                      fit: BoxFit.contain)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                context.bloc<ComplaintCubit>().getComplaint();
                ComplaintState state = context.bloc<ComplaintCubit>().state;
                if (state is ComplaintLoaded) {
                  onTap(3);
                }
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/coment' +
                          (selectedIndex == 3 ? '.png' : '_normal.png')),
                      fit: BoxFit.contain)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                context.bloc<MerchandiseCubit>().getMerchandise();
                MerchandiseState state = context.bloc<MerchandiseCubit>().state;
                if (state is MerchandiseLoaded) {
                  onTap(4);
                }
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/shoping_bag' +
                          (selectedIndex == 4 ? '.png' : '_normal.png')),
                      fit: BoxFit.contain)),
            ),
          )
        ],
      ),
    );
  }
}

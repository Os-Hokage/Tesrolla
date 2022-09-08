import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier{

  int selectedBottomTab = 0;

  void onBottomNavTabChange(int index) {
    selectedBottomTab = index;
    notifyListeners();
  }

  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;
  bool isTrunkLock = true;

  void updateRightDoorState(){
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }

  void updateLeftDoorState(){
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }

  void updateBonnetState(){
    isBonnetLock = !isBonnetLock;
    notifyListeners();
  }

  void updateTrunkState(){
    isTrunkLock = !isTrunkLock;
    notifyListeners();
  }

  bool isCoolSelected = true;

  void updateCoolSelectedTab(){
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }



  bool isShowTyre =  false;

  void showTyreController(int index) {
    if (selectedBottomTab != 3 && index == 3) {
      Future.delayed(Duration(milliseconds: 400), () {
        isShowTyre = true;
        notifyListeners();
      });
    } else {
      isShowTyre = false;
      notifyListeners();
    }
  }

    bool isShowTyreStatus = false;

    void tyreStatusController(int index) {
      if (selectedBottomTab != 3 && index == 3) {
        isShowTyreStatus = true;
        notifyListeners();
      } else {
        Future.delayed(Duration(milliseconds: 400), () {
          isShowTyreStatus = false;
          notifyListeners();
        });
      }

  }


}
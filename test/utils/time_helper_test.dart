import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/utils/time_helper.dart';

main(){
  group("TimeHelper", () {
    group("getTimeOfTheDay", () {
  test("should be Night", (){
    //Arrange
    DateTime currentTime = DateTime(2023,09,17,3);

    //Act
    String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

    //Assert
    expect(timeOfDay, "Night");
  });

  test("should be Afternoon", (){
    //Arrange
    DateTime currentTime = DateTime(2023,09,17,13);

    //Act
    String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

    //Assert
    expect(timeOfDay, "Afternoon");
  });


  test("should be Morning", (){
    //Arrange
    DateTime currentTime = DateTime(2023,09,17,7);

    //Act
    String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

    //Assert
    expect(timeOfDay, "Morning");
  });


  test("should be Evening", (){
    //Arrange
    DateTime currentTime = DateTime(2023,09,17,18);

    //Act
    String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime);

    //Assert
    expect(timeOfDay, "Evening");
  });

  });
  });

}
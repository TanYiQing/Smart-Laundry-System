import 'package:final_year_project/services/advanceTile/advanced_tile.dart';

final advancedTiles = <AdvancedTile>[
  AdvancedTile(
    title: 'How can I make payment?',
    tiles: [
      AdvancedTile(
          title:
              'You can make payment through online, cash on delivery, or cash payment at the store.'),
    ],
  ),
  AdvancedTile(
    title: 'Is there a minimum order value?',
    tiles: [
      AdvancedTile(title: 'No, there is no minimum order value.'),
    ],
  ),
  AdvancedTile(
    title: 'Is there any charge on delivery',
    tiles: [
      AdvancedTile(
          title: 'Yes. There will be a delivery charge of RM5 per trip.'),
    ],
  ),
  AdvancedTile(
    title: "How can I apply for a return and refund?",
    tiles: [
      AdvancedTile(
          title:
              "Good sold are not returnable and refundable. However, if there is any problem with the goods, you may visit the physical shop to apply for return and refund."),
    ],
  ),
  AdvancedTile(
    title: "Why did I not receive my verification code?",
    tiles: [
      AdvancedTile(
          title: "Common reasons on why you did not receive your verification code:" +
              "\n" +
              "1) The OTP service provider is experiencing technical difficulties, resulting in the request being delayed."+"\n"+
              "You can request agin to get new OTP code.Most cases will be resolved once you retry. Alternatively, you may try restarting your mobile device to re-establish a connection with your OTP service provider. "+"\n"+
              "2) The mobile connection is not stable at the moment."+"\n"+
              "Occasionally, your OTP request may be delayed due to poor mobile connection. User may try switching between WiFi and mobile data or connecting to a different network connection to solve this issue. You may try requesting for the OTP once your mobile connection has been restored."+"\n"+
              "3) You have logged on to a different account."+"\n"+
              "In some cases, user may have logged into an account which has a different registered mobile number being used to request for the OTP. You may try resolving this issue by re-logging into the correct account and request for OTP again."),
    ],
  ),
];
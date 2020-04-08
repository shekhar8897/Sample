// import 'package:bloc/bloc.dart';
// import 'package:sample/pages/index.dart';
// import 'package:sample/pages/profile.dart';

// enum NavigationEvents{
//   DashboardClickEvent,
//   ProfileClickEvent,
// }

// abstract class NavigationStates{}

// class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
//   final Function onMenuTap;

//   NavigationBloc({this.onMenuTap});

//   @override
//   NavigationStates get initialState => IndexPage(
//     onMenuTap: onMenuTap,
//   );

//   @override
//   Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    
//     switch (event) {
//       case NavigationEvents.DashboardClickEvent:
//         yield IndexPage(
//           onMenuTap: onMenuTap,
//         );
//         break;
//       case NavigationEvents.ProfileClickEvent:
//         yield ProfilePage(
//           onMenuTap: onMenuTap,
//         );
//         break;
//     }
//   }
// }
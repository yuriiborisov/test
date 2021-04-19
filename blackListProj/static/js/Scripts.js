$(document).ready(function(){
//     var PhoneIsValid = false;
//     var NameIsValid = false;
//
$("#phone_input").mask("+7 (999) 999-99-99");

//
// $("#phone_input").keyup(function(){
//        if( $("#phone_input").val().length==18){
//         PhoneIsValid=true;
//        }
//        else {
//         PhoneIsValid = false;
//         }
//
//         if( PhoneIsValid==true && NameIsValid==true){
//             document.getElementById('add_button').disabled = false;
//              $("#add_button").css({'opacity':'1'});
//
//         }
//          else{
//             document.getElementById('add_button').disabled = true;
//              $("#add_button").css({'opacity':'0.3'});
//         }
//
//      });
//
// //
// $("#name_input").keyup(function(){
//
//
//
//         if($("#name_input").val().length>0){
//             NameIsValid = true;
//
//         }
//          else if($("#name_input").val().length==0){
//             $("#name_input").css({'border':'1px solid #fff'});
//             NameIsValid = false;
//
//         }
//
//             if(NameIsValid==true && PhoneIsValid==true){
//                 document.getElementById('add_button').disabled = false;
//                 $("#add_button").css({'opacity':'1'});
//                 //$("#sign_in").addClass("submit_active");
//                 $("#add_button").hover(function(){
//                 $("#add_button").css({transform:size(2)});
//             })
//
//             }
//              else{
//                 document.getElementById('add_button').disabled = true;
//                 $("#add_button").css({'opacity':'0.3'});
//
//              }
//
//
// //     });
//     });
//
//   if($("#phone_input").val().length==17 && $("#name_input").val().length>2){
//        NameIsValid=true;
//        PhoneIsValid=true;
//     };
//
//
});
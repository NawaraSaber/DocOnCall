// import 'package:doc_on_call/consts/my_validators.dart';
// import 'package:doc_on_call/services/my_app_methods.dart';
// import 'package:doc_on_call/widgets/subtitle_text.dart';
// import 'package:doc_on_call/widgets/title_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';

// class UploadHistroyScreen extends StatefulWidget {
//   static const routeName = '/UploadHistroyScreen';

//   const UploadHistroyScreen({
//     super.key,
//   });

//   @override
//   State<UploadHistroyScreen> createState() =>
//       _UploadHistroyScreenState();
// }

// class _UploadHistroyScreenState extends State<UploadHistroyScreen> {
//   final _formKey = GlobalKey<FormState>();
//   XFile? _pickedImage;

//   late TextEditingController _titleController,
//       _medicineController,
//       _descriptionController,
//       _labsController;

//   @override
//   void initState() {
//     // _categoryController = TextEditingController();
//     // _brandController = TextEditingController();

//     _titleController = TextEditingController(text: "");
//     _medicineController = TextEditingController(text: "");
//     _descriptionController = TextEditingController(text: "");
//     _labsController = TextEditingController(text: "");

//     super.initState();
//   }

//   @override
//   void dispose() {
//     _titleController.dispose();
//     _medicineController.dispose();
//     _descriptionController.dispose();
//     _labsController.dispose();
//     super.dispose();
//   }

//   void clearForm() {
//     _titleController.clear();
//     _medicineController.clear();
//     _descriptionController.clear();
//     _labsController.clear();
//     removePickedImage();
//   }

//   void removePickedImage() {
//     setState(() {
//       _pickedImage = null;
//     });
//   }

//   Future<void> _uploadProduct() async {
//     final isValid = _formKey.currentState!.validate();
//     FocusScope.of(context).unfocus();

//     if (isValid) {}
//   }

//   Future<void> _editProduct() async {
//     final isValid = _formKey.currentState!.validate();
//     FocusScope.of(context).unfocus();

//     if (isValid) {}
//   }

//   Future<void> localImagePicker() async {
//     final ImagePicker picker = ImagePicker();
//     await MyAppMethods.imagePickerDialog(
//       context: context,
//       cameraFCT: () async {
//         _pickedImage = await picker.pickImage(source: ImageSource.camera);
//         setState(() {});
//       },
//       galleryFCT: () async {
//         _pickedImage = await picker.pickImage(source: ImageSource.gallery);
//         setState(() {});
//       },
//       removeFCT: () {
//         setState(() {
//           _pickedImage = null;
//         });
//       }, gallaryFCT: null,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       bottomSheet: SizedBox(
//         height: kBottomNavigationBarHeight + 10,
//         child: Material(
//           color: Theme.of(context).scaffoldBackgroundColor,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton.icon(
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.all(12),
//                   backgroundColor: Colors.red,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(
//                       10,
//                     ),
//                   ),
//                 ),
//                 icon: const Icon(Icons.clear),
//                 label: const Text(
//                   "Clear",
//                   style: TextStyle(
//                     fontSize: 20,
//                   ),
//                 ),
//                 onPressed: () {},
//               ),
//               ElevatedButton.icon(
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.all(12),
//                   // backgroundColor: Colors.red,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(
//                       10,
//                     ),
//                   ),
//                 ),
//                 icon: const Icon(Icons.upload),
//                 label: const Text(
//                   "Upload Product",
//                   style: TextStyle(
//                     fontSize: 20,
//                   ),
//                 ),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         title: const TitleTextWidget(
//           lablel: "Upload a new product",
//         ),
//       ),
//       body: GestureDetector(
//         onTap: () {
//           FocusScope.of(context).unfocus();
//         },
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 /* Image picker here ***********************************/

//                 const SizedBox(
//                   height: 25,
//                 ),
//                 //TODO: Add Choose Category Widget
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
//                   child: Form(
//                     key: _formKey,
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           controller: _titleController,
//                           key: const ValueKey('Title'),
//                           maxLength: 80,
//                           minLines: 1,
//                           maxLines: 2,
//                           keyboardType: TextInputType.multiline,
//                           textInputAction: TextInputAction.newline,
//                           decoration: const InputDecoration(
//                             filled: true,
//                             contentPadding: EdgeInsets.all(12),
//                             hintText: 'Product Title',
//                           ),
//                           validator: (value) {
//                             return MyValidators.uploadProdTexts(
//                               value: value,
//                               toBeReturnedString: "Please enter a valid title",
//                             );
//                           },
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           children: [
//                             Flexible(
//                               flex: 1,
//                               child: TextFormField(
//                                 controller: _medicineController,
//                                 key: const ValueKey('Price \$'),
//                                 keyboardType: TextInputType.number,
//                                 inputFormatters: <TextInputFormatter>[
//                                   FilteringTextInputFormatter.allow(
//                                     RegExp(r'^(\d+)?\.?\d{0,2}'),
//                                   ),
//                                 ],
//                                 decoration: const InputDecoration(
//                                     filled: true,
//                                     contentPadding: EdgeInsets.all(12),
//                                     hintText: 'Price',
//                                     prefix: SubtitleTextWidget(
//                                       label: "\$ ",
//                                       color: Colors.blue,
//                                       fontSize: 16,
//                                     )),
//                                 validator: (value) {
//                                   return MyValidators.uploadProdTexts(
//                                     value: value,
//                                     toBeReturnedString: "Price is missing",
//                                   );
//                                 },
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Flexible(
//                               flex: 1,
//                               child: TextFormField(
//                                 inputFormatters: [
//                                   FilteringTextInputFormatter.digitsOnly
//                                 ],
//                                 controller: _labsController,
//                                 keyboardType: TextInputType.number,
//                                 key: const ValueKey('Quantity'),
//                                 decoration: const InputDecoration(
//                                   filled: true,
//                                   contentPadding: EdgeInsets.all(12),
//                                   hintText: 'Qty',
//                                 ),
//                                 validator: (value) {
//                                   return MyValidators.uploadProdTexts(
//                                     value: value,
//                                     toBeReturnedString: "Quantity is missed",
//                                   );
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 15),
//                         TextFormField(
//                           key: const ValueKey('Description'),
//                           controller: _descriptionController,
//                           minLines: 3,
//                           maxLines: 8,
//                           maxLength: 1000,
//                           textCapitalization: TextCapitalization.sentences,
//                           decoration: const InputDecoration(
//                             filled: true,
//                             contentPadding: EdgeInsets.all(12),
//                             hintText: 'Product description',
//                           ),
//                           validator: (value) {
//                             return MyValidators.uploadProdTexts(
//                               value: value,
//                               toBeReturnedString: "Description is missed",
//                             );
//                           },
//                           onTap: () {},
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: WidgetsBinding.instance.window.viewInsets.bottom > 0.0
//                       ? 10
//                       : kBottomNavigationBarHeight + 10,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

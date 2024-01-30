import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _birthDetailsController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<String> dropdownItems = [
    'Option 1',
    'Option 2',
    'Option 3',
  ];
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('KTP App'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text('Edit Data Diri',
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Nama',
                        hintText: 'Masukkan nama',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _birthDetailsController,
                      decoration: const InputDecoration(
                        labelText: 'Tempat, Tanggal Lahir',
                        hintText: 'Masukkan tempat, tanggal lahir',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.calendar_today),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // SfDateRangePicker(
                    //   onSelectionChanged:
                    //       (DateRangePickerSelectionChangedArgs args) {
                    //     _birthDetailsController.text = args.value.toString();
                    //   },
                    //   selectionMode: DateRangePickerSelectionMode.single,
                    // ),
                    const SizedBox(height: 12),
                    DropdownButtonFormField(
                        decoration: const InputDecoration(
                            labelText: 'Provinsi',
                            hintText: 'Masukkan provinsi',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.location_city)),
                        value: selectedValue,
                        items: dropdownItems
                            .map((String e) => DropdownMenuItem<String>(
                                value: e, child: Text(e)))
                            .toList(),
                        hint: const Text('Pilih Provinsi'),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        }),
                    const SizedBox(height: 12),
                    DropdownButtonFormField(
                        decoration: const InputDecoration(
                            labelText: 'Kabupaten/Kota',
                            hintText: 'Masukkan kabupaten/kota',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.location_city)),
                        value: selectedValue,
                        items: dropdownItems
                            .map((String e) => DropdownMenuItem<String>(
                                value: e, child: Text(e)))
                            .toList(),
                        hint: const Text('Pilih Kabupaten/Kota'),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        }),

                    const SizedBox(height: 12),
                    DropdownButtonFormField(
                        decoration: const InputDecoration(
                            labelText: 'Pendidikan Terakhir',
                            hintText: 'Masukkan pendidikan terakhir',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.school)),
                        value: selectedValue,
                        items: dropdownItems
                            .map((String e) => DropdownMenuItem<String>(
                                value: e, child: Text(e)))
                            .toList(),
                        hint: const Text('Pilih pendidikan terakhir'),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        }),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _professionController,
                      decoration: const InputDecoration(
                        labelText: 'Pekerjaan',
                        hintText: 'Masukkan pekerjaan',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.work),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle form submission
                          print('Selected value: $selectedValue');
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}

// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlong;

class ReportPlaceNew extends StatefulWidget {
  const ReportPlaceNew({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<ReportPlaceNew> createState() => _ReportPlaceNewState();
}

class _ReportPlaceNewState extends State<ReportPlaceNew> {
  final MapController _mapController = MapController();
  latlong.LatLng? _pickedLocation;
  final _sourceLinkController = TextEditingController();
  final _titleController = TextEditingController();
  final _tagsController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Scaffold(
        appBar: AppBar(title: Text("Report a Place")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _sourceLinkController,
                decoration: InputDecoration(
                  labelText: "Source Link (mandatory)",
                ),
              ),
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                ),
              ),
              TextField(
                controller: _tagsController,
                decoration: InputDecoration(
                  labelText: "Tags (comma separated)",
                ),
              ),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: "Description",
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: FlutterMap(
                  mapController: _mapController,
                  options: MapOptions(
                    onTap: (tapPosition, latlng) {
                      setState(() {
                        _pickedLocation = latlng;
                      });
                    },
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                    if (_pickedLocation != null)
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: _pickedLocation!,
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.location_pin,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle source report submission
                  print("Place Report Submitted");
                  print("Source Link: ${_sourceLinkController.text}");
                  print("Title: ${_titleController.text}");
                  print("Tags: ${_tagsController.text}");
                  print("Description: ${_descriptionController.text}");
                  print("Picked Location: $_pickedLocation");
                  // Send data to server or handle storage here
                },
                child: Text("Submit Place Report"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

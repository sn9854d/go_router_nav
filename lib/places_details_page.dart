import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_place/google_place.dart';

class PlaceDetailPage extends StatefulWidget {
  const PlaceDetailPage({Key? key, this.placeId}) : super(key: key);
  final String? placeId;

  @override
  State<PlaceDetailPage> createState() => _PlaceDetailPageState();
}

class _PlaceDetailPageState extends State<PlaceDetailPage> {
  late GooglePlace googlePlace;

  @override
  void initState() {
    super.initState();
    String apiKey = dotenv.env['API_KEY']!;
    googlePlace = GooglePlace(
      apiKey,
      proxyUrl: 'cors-anywhere.herokuapp.com',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlaceDetailPage'),
      ),
      body: Center(
        child: widget.placeId == null || widget.placeId!.isEmpty
            ? const Text('Error Occured')
            : FutureBuilder(
                future: googlePlace.details.get(widget.placeId!),
                builder: (context, AsyncSnapshot<DetailsResponse?> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator.adaptive();
                  }
                  if (snapshot.hasError) {
                    return const Text('Error occured');
                  }
                  if (snapshot.hasData) {
                    if (snapshot.data?.result?.addressComponents != null &&
                        snapshot.data!.result!.addressComponents!.isNotEmpty) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var data
                              in snapshot.data!.result!.addressComponents!)
                            Text('${data.types?.first} :: ${data.longName}')
                        ],
                      );
                    }
                    return Text('has data ${snapshot.data?.status}');
                  }

                  return SizedBox(
                    child: Text('stat: ${snapshot.data?.status}'),
                  );
                },
              ),
      ),
    );
  }
}

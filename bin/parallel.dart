import 'dart:isolate';
import 'async.dart';

const PROCESS_TIME = 3;

// Structure created to send SendPort with the function parameters
class ProcessImageEntry {
  final String image;
  final SendPort sendPort;
  ProcessImageEntry(this.image, this.sendPort);
}

// Function made to be used as parallel entry
void processImage(ProcessImageEntry entry) async {
  // Fake long duration processing
  await sleep(seconds: PROCESS_TIME);
  // Use the sendPort to send a message with the result before finish
  entry.sendPort.send('${entry.image} processed');
}

// Tip: run it multiple times to see the return order change
void main() async {
  // Create a ReceivePort to receive messages
  final receivePort = ReceivePort();

  // Create two isolates with same function and different entries
  // Isolate creation is async, the spawn will return a Future,
  // so you need to await for it ends
  final isolatesSpawn = [
    Isolate.spawn(
        processImage, ProcessImageEntry('image 1', receivePort.sendPort)),
    Isolate.spawn(
        processImage, ProcessImageEntry('image 2', receivePort.sendPort)),
    Isolate.spawn(
        processImage, ProcessImageEntry('image 3', receivePort.sendPort)),
  ];

  // We can use Future.wait to await for a list of async calls, it's more
  // efficient because we don't need to await for one isolate creation
  // to create another one
  await Future.wait(isolatesSpawn);

  print('Isolates created, returning in $PROCESS_TIME seconds');

  // Create a for loop that will run every time that a Stream returns something
  // The method receivePort.take will create a Stream that will resolve 
  // each time that receivePort receives a message, as we are using 
  // {isolatesSpawn.length} we will await for all isolates to return
  // If you use 1 as param the for will run only for the first returned message 
  await for (final image in receivePort.take(isolatesSpawn.length)) {
    // As we are doing parallel work both Isolates should return at the same
    // time
    print(image);
  }
}

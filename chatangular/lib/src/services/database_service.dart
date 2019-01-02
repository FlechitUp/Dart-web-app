import 'dart:html';
import 'dart:async';

import '../models/message.dart';
import 'package:angular/angular.dart';
import 'package:firebase/firebase.dart' as fb;

@Injectable()
class DatabaseService {
  fb.Auth _fbAuth;
  fb.GoogleAuthProvider _fbGoogleAuthProvider;
  fb.Database _fbDatabase;
  fb.Storage _fbStorage;
  fb.DatabaseReference _fbRefMessages;
  fb.User user;
  List<Message> messages;
  

  DatabaseService() {
    fb.initializeApp(
      apiKey: "AIzaSyDN2dZQ4_EHr-cQByiBSI9Fcs942Ayq6o8",
      authDomain: "myproject5652.firebaseapp.com",
      databaseURL: "https://myproject5652.firebaseio.com",
      projectId: "myproject5652",
      storageBucket: "myproject5652.appspot.com",
      messagingSenderId: "161213644619"
    );

    _fbGoogleAuthProvider = new fb.GoogleAuthProvider();
    _fbAuth = fb.auth();
    _fbAuth.onAuthStateChanged.listen(_authChanged);
    
    _fbDatabase = fb.database();
    _fbRefMessages = _fbDatabase.ref("messages");
    _fbStorage = fb.storage();
  }

  void _authChanged(fb.User fbUser) {
    user = fbUser;
    if (user != null) {
      messages = [];
      _fbRefMessages.limitToLast(12).onChildAdded.listen(_newMessage);
    }
  }
  
  void _newMessage(fb.QueryEvent event) {
    Message msg = new Message.fromMap(event.snapshot.val());
    messages.add(msg);
  }

  Future signIn() async {
    try {
      await _fbAuth.signInWithPopup(_fbGoogleAuthProvider);
    }
    catch (error) {
      print("$runtimeType::login() -- $error");
    }
  }

  void signOut() {
    _fbAuth.signOut();
  }

  Future sendMessage({String text, String imageURL}) async {
    try {
      Message msg = new Message(user.displayName, text, user.photoURL, imageURL);
      await _fbRefMessages.push(msg.toMap());
    }
    catch (error) {
      print("$runtimeType::sendMessage() -- $error");
    }
  }

  Future sendImage(File file) async {
  fb.StorageReference fbRefImage =
      _fbStorage.ref("${user.uid}/${new DateTime.now()}/${file.name}");

  fb.UploadTask task =
      fbRefImage.put(file, new fb.UploadMetadata(contentType: file.type));

  StreamSubscription sub;

  sub = task.onStateChanged.listen((fb.UploadTaskSnapshot snapshot) {
    print("Uploading Image -- Transfered ${snapshot.bytesTransferred}/${snapshot.totalBytes}...");

    if (snapshot.bytesTransferred == snapshot.totalBytes) {
      sub.cancel();
    }
  }, onError: (fb.FirebaseError error) {
    print(error.message);
  });

  try {
    fb.UploadTaskSnapshot snapshot = await task.future;

    if (snapshot.state == fb.TaskState.SUCCESS) {
      //sendMessage(imageURL: snapshot.downloadURL.toString());
    }
  } catch (error) {
    print(error);
  }
}

}
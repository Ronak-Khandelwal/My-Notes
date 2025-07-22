class CloudStorageExceptions implements Exception{
  const CloudStorageExceptions();
}

class CouldNotCreateNoteException extends CloudStorageExceptions{}

class CouldNotGetAllNotesException extends CloudStorageExceptions{}

class CouldNoteDeleteNoteException extends CloudStorageExceptions{}
class CouldNotUpdateNoteException extends CloudStorageExceptions{}
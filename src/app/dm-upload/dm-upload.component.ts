import {Component, OnInit, ViewChild} from '@angular/core';
import {SessionService} from '../auth/session.service';
import {WindowService} from '../utils/window.service';
import {DocumentStoreService} from '../dm/document-store.service';

@Component({
  selector: 'app-dm-upload',
  templateUrl: './dm-upload.component.html',
  styleUrls: ['./dm-upload.component.scss']
})
export class DmUploadComponent implements OnInit {

  @ViewChild('dmUploadForm') dmUploadForm;
  jwt: string;
  error: string;
  fileToUpload: File = null;

  constructor(private sessionService: SessionService,
              private documentService: DocumentStoreService,
              private windowService: WindowService) {}

  ngOnInit() {
    this.jwt = this.sessionService.getSession().token;
    if (!this.jwt) {
      throw new Error('jwt token are required arguments');
    }
  }

  handleFileInput(files: FileList) {
    this.fileToUpload = files.item(0);
    this.error = null;
  }

  uploadDocument() {
    if (this.fileToUpload) {
      this.postFile();
    } else {
      this.error = new Error('You have not selected a file for upload.').message;
    }
  }

  gotoListView() {
    this.windowService.locationAssign('/list');
  }

  postFile() {
    this.documentService.postFile('PRIVATE', null, this.fileToUpload)
      .subscribe( () => this.gotoListView(),
        err => {
          if (err.status === 401) {
            this.sessionService.clearSession();
            return;
          }
          this.error = err;
        }
      );
  }

  cancelUpload() {
    this.gotoListView();
  }
}

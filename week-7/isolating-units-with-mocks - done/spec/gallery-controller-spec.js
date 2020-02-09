var element = {innerHTML: null}
var gallery = {_addImageCalled: 0, addImage: function() { this._addImageCalled++ }}
var galleryView = {toHtml: function(){return null}, called: function(){this._calledCalls++; return this}, _calledCalls: 0, toHtml: function(){this._toHtmlCalls++; return 'URL to innerHTML'}, _toHtmlCalls: 0}
var Gallery = function () {return gallery}
var GalleryView = function(gallery) {return galleryView.called()}
var galleryController = new GalleryController(element, Gallery, GalleryView)

function callingAddImageAddsImageToGallery() {
  galleryController.addImage('test')
  assert.isTrue(gallery._addImageCalled == 1, "callingAddImageAddsImageToGallery");
};

function callingAddImageCreatesNewGalleryView() {
  assert.isTrue(galleryView._calledCalls == 1, "callingAddImageCreatesNewGalleryView");
};

function callingAddImageCallsToHtmlOnGalleryView() {
  assert.isTrue(galleryView._toHtmlCalls == 1, "callingAddImageCallsToHtmlOnGalleryView");
};

function callingAddImageOnControllerSetsInnerHtmlOnElement() {
  assert.isTrue(element.innerHTML == 'URL to innerHTML', "callingAddImageOnControllerSetsInnerHtmlOnElement");
};

console.log("Gallery controller spec:");
callingAddImageAddsImageToGallery();
callingAddImageCreatesNewGalleryView();
callingAddImageCallsToHtmlOnGalleryView();
callingAddImageOnControllerSetsInnerHtmlOnElement();

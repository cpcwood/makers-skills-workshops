function toHtmlGetsImageUrlsFromGallery() {
  var galleryView = new GalleryView({imageUrls: function() { return ['testURL'] }})
  assert.isTrue( galleryView.toHtml().includes('testURL'), "toHtmlGetsImageUrlsFromGallery");
};

function toHtmlReturnsHtmlContainingImageTagsForEachImageUrl() {
  var galleryView = new GalleryView({imageUrls: function() { return ['testURL'] }})
  assert.isTrue(galleryView.toHtml().includes("<img src='testURL' width=300 />"), "toHtmlReturnsHtmlContainingImageTagsForEachImageUrl");
};

console.log("Gallery view spec:");
toHtmlGetsImageUrlsFromGallery();
toHtmlReturnsHtmlContainingImageTagsForEachImageUrl();

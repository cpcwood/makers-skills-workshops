

describe('it adds postcode region to page', function(){
  beforeAll(function(done) {
    div = {
      'innerText': ''
    }
    var doc = {
      querySelector: function(output){
        return div
      }
    }

    var addPostcode = new AddPostcode(doc)
    addPostcode.showRegion()

    setTimeout(function() {
      done() 
    }, 2000)
  });

  it('postcode', function() {
    expect(div.innerText).toEqual('London')
  })
})
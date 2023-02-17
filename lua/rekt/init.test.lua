local rekt = require("rekt")

describe("test_file", function()
  it("can guess the file type from a filename", function()
    assert.equal("go", rekt.guess_type("somefilename.go"))
    assert.equal("typescript", rekt.guess_type("somefilename.ts"))
    assert.equal("javascript", rekt.guess_type("some.file.name.js"))
  end)

  it("can rewrite the file name with test suffix", function()
    assert.equal("somefilename_test.go", rekt.make_test_name("somefilename.go"))
    assert.equal("somefilename.spec.ts", rekt.make_test_name("somefilename.ts"))
    assert.equal("somefilename.spec.tsx", rekt.make_test_name("somefilename.tsx"))
    assert.equal("some.file.name.spec.js", rekt.make_test_name("some.file.name.js"))
  end)
end)

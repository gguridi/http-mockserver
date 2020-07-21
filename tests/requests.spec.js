const frisby = require("frisby");

describe("endpoints configured", () => {
  it("should return an OK response for /", (done) => {
    frisby
      .get("http://localhost/")
      .expect("status", 200)
      .expect("json", "response", {
        status: "OK",
      })
      .done(done);
  });
});

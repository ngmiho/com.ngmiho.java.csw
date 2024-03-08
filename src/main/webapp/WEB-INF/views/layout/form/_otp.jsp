<div class="container">
  <div class="col-md-12">
  </div>
  <form action="/confirm-otp" method="post" class="form-horizontal templatemo-forgot-password-form templatemo-container"
    role="form">
    <div class="mb-3">
      <h2 align="middle">CONFIRM OTP</h2>
    </div>
    <div class="col-12">
      <label for="staticEmail2" class="visually-hidden">Confirm OTP:</label>
      <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="Confirm OTP:">
      <label for="inputPassword2" class="visually-hidden">OTP</label>
      <input type="text" class="form-control" name="otp" placeholder="OTP">
    </div>
    <div class="col-4 mt-3">
      <input type="submit" value="Resend OTP" class="btn btn-warning">
    </div>
    <div class="row justify-content-md-end my-4 pe-5">
      <div class="col-md-7">
        <input type="submit" value="Confirm" class="btn btn-warning">
        <input type="submit" value="Cancel" class="btn btn-warning">
      </div>
    </div>
  </form>
</div>
<form class='form-horizontal' action=$SELF_URL method='get' id='user_form' name='user_form' role='form'>
  <input type=hidden name=index value=$index>
  <input type=hidden name=ID value='%ID%'>
  <fieldset>
    <div class='box box-big-form'>
      <div class='box-header with-border'>
        <h4 class='box-title'>_{USERS}_</h4>
        <span class='pull-right'></span>
      </div>
      <div class='box-body'>
        <div class='form-group'>
          <label class='control-label col-md-3 text-left'  for='PIP'>_{PIP}_</label>
          <div class='col-lg-6'>
            <input id='PIP' name='PIP' value='%PIP%' class='form-control' type='text' required>
          </div>
        </div>
        <div class='form-group'>
          <label class='control-label col-md-3 text-left' for='EMAIL'>_{EMAIL}_</label>
          <div class='col-lg-6'>
            <input id='EMAIL' name='EMAIL' value='%EMAIL%' class='form-control' type='email' required>
          </div>
        </div>
        <div class='form-group'>
          <label class='control-label col-md-3 text-left' for='ADDRESS'>_{ADDRESS}_</label>
          <div class='col-lg-6'>
            <input id='ADDRESS' name='ADDRESS' value='%ADDRESS%' class='form-control' type='text' required>
          </div>
        </div>
        <div class='form-group'>
          <label class='control-label col-md-3' for='LOGIN'>_{LOGIN}_</label>
          <div class='col-lg-6'>
            <input id='LOGIN' name='LOGIN' value='%LOGIN%' class='form-control' type='login' >
          </div>
        </div>
        <div class='form-group'>
          <label class='control-label col-md-3' for='PASSWD'>_{PASSWD}_</label>
          <div class='col-lg-6'>
            <input id='PASSWD' name='PASSWD' value='%PASSWD%' class='form-control' type='password'>
          </div>
        </div>
        <div class='form-group'>
          <label class='control-label col-md-3' for='CELL'>_{CELL}_</label>
          <div class='col-lg-6'>
            <input id='CELL' name='CELL' value='%CELL%' class='form-control' type='tel' required>
          </div>
        </div>
      </div>
      <div class='box-footer'>
        <input type=submit name=%ACTION% value='%LNG_ACTION%' class="btn btn-primary" >
      </div>
    </div>
  </fieldset>
</form>


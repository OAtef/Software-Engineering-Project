<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="../../css/donor/slider.css">
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>

<head>
  <meta charset="utf-8" />
  <title>Profile | Water Foundation</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../css/donor/owl.carousel.css">
  <link rel="stylesheet" href="../../css/donor/main.css">
  <link rel="stylesheet" media="screen,print" href="https://d26p6gt0m19hor.cloudfront.net/assets/app-0da47adf4e47aed4cf5f.bundle.css" />


  <script>
    var _rollbarConfig = {
                accessToken: '3d1cac4e60204b1596321b788ae4976b',
                captureUncaught: true,
                captureUnhandledRejections: true,
                payload: {
                    environment: 'production',
                    level: 'warning'
                }
            };
        </script>
  <style>
      p{
          color: black;
      }
  </style>

</head>

<body class="account default user-profile private legacy-spacing ">
  <div class="wrapper">
    <div class="container">
      <div class="row profile-header pb-1">
        <div class="large-9 medium-12 small-12 columns profile">
          <img class="avatar" alt="Habiba Hegazy" src="https://maji-production-store.imgix.net/f3bf5e29ae84d48cc8a0de9bde43673adbdd381b444b42e4276a8f55f726?ixlib=rails-2.1.4&fit=crop&dpr=2.0&h=170&w=170&auto=format&fm=pjpg" width="170" height="170" />
          <div class="profile-header-text">
            <h1 class="h40">Habiba Hegazy</h1>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="tab-wrapper border-t border-solid border-0 border-grey-30 edge-to-edge edge-to-edge--small-medium-only my-2">
          <nav class="transformer-tabs md-tabs">
            <ul>
              <li class="active">
                <a id="dashboard">Dashboard</a>
              </li>
              <li class="">
                <a id="donate">Donate</a>
              </li>
              <li class="">
                <a id="settings">Settings</a>
              </li>
            </ul>
          </nav>
        </div>
      </div>

    <!-- Dashboard -->
    <div class="row tab-content">

        <div id="donate-form" class="large-12 medium-12 small-12 columns left-side donation-history" style="display: none; min-height: 500px">
          <form id="msform">
            <!-- progressbar -->
            <ul id="progressbar">
              <li class="active">Member Name</li>
              <li>Contact Information</li>
              <li>Other Details</li>
            </ul>
            <!-- fieldsets -->
            <fieldset>
              <h2 class="fs-title">Add a New Donation</h2>
              <h3 class="fs-subtitle">This is step 1</h3>

              Project Category
              <br>
           
                <div id="pc"></div>

                Donation Reason
                <br>
                <div id="dr"></div>
              Payment Method
                <br>
              <div id="pm"> </div>


              <input type="button" name="next" class="next action-button" value="Next" id="n1"/>
            </fieldset>
            <fieldset>
              <h2 class="fs-title">Receiver Information</h2>
              <h3 class="fs-subtitle">This is step 2</h3>

              <div id="step2">
                <div id="recInfo">
                    <div id="userInfo">
                        <input type="text" id="receiver_name" placeholder="Receiver Name" value=""/>
                        <input type="text" id="mobileNumber" placeholder="Mobile Number" value=""/>
                        <input type="text" id="email" placeholder="Email" value=""/>
                    </div>
                </div>
                  <div id="payInfo"></div>
                  <div id="showinstead"></div>
                <div id="tec"></div>
              </div>

              <input type="button" name="previous" class="previous action-button" value="Previous" />
            
              <input type="button" name="next" class="next action-button" value="Next" />
            </fieldset>
              <fieldset>
                <h2 class="fs-title">Payment Details</h2>
                <h3 class="fs-subtitle">This is step 3</h3>
              <br>
              Donation Amount
              <br>
              <input id="dv" type="number" name="Amount" min="0" >
              <!--<br>
              Promo Code
              <br>
              <input id="promo" type="number" name="promo" >-->

              <input type="button" name="previous" class="previous action-button" value="Previous" />
              <input type="button" name="submit" id="DoDonation" value="Donate" />
            </fieldset>
          </form>
        </div>

        <div class="large-4 medium-12 small-12 columns left-side donation-history">
          <div class="quick-links module">
            <div class="header" style="overflow: hidden; display: flex;">
              <div class="title">
                <h1 class="h60">Donation History</h1>
              </div>
            </div>
            <ul class="list-group" style="margin: 0; flex: 1; overflow-y: scroll;">
              <li class="list-group-item">
                Item 1
              </li>
              <li class="list-group-item">
                Item 2
              </li>
              <li class="list-group-item">
                Item 3
              </li>
              <li class="list-group-item">
                Item 1
              </li>
              <li class="list-group-item">
                Item 2
              </li>
              <li class="list-group-item">
                Item 3
              </li>
              <li class="list-group-item">
                Item 1
              </li>
              <li class="list-group-item">
                Item 2
              </li>
            </ul>
          </div>
        </div>
        <div class="large-8 medium-12 small-12 columns right-side user-data donate-now">
          <div class="activity-wrapper module">
            <div class="header">
              <div class="title">
                <h1 class="h60">Donate Now </h1>
              </div>
            </div>
            <div class="content">

              <div class="container-fluid" style="width: 800px; height: 400px" id="divfor">

                <div class="row  d-flex align-items-center justify-content-center">
                  <div class="col-lg-5 col-md-8 col-sm-8 header-right">
                    <div for="divfor" style="width:600px; height:100%" class="owl-carousel owl-banner" id="divbut">
                      <img class="img-fluid w-100" src="../../img/donor/home-banner-img.jpg" alt="">
                      <img class="img-fluid w-100" src="../../img/donor/home-banner-img.jpg" alt="">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Setting -->
    <div class="row tab-content settings-only" id="settings_div">
      <div class="large-6 medium-12 small-12 columns left-side">
        <div class="settings module">
          <div class="header">
            <div class="title">
              <h1 class="h60">Update Profile</h1>
            </div>
          </div>
          <div class="content">
            <p class="p30 mb-2">Basic Information</p>
            <form class="simple_form edit_user" id="edit_user" data-parsley-validate="true" data-behavior="ConfirmInvisibility" action="/account/settings" accept-charset="UTF-8" method="post" novalidate=""><input name="utf8" type="hidden" value="✓"><input
                type="hidden" name="_method" value="patch"><input type="hidden" name="authenticity_token" value="7f3pFfKUrH7sUjo92HNV4Z/sWDlDz7HGveIEW2M2DMgkZeE+D2V91LlxTQZVK3R6dl2yyWiM3jBioEp1wLZ9Lw==">
              <div class="photo">
                <div class="uploader">
                  <div id="9429ea98f10c8b9fca2d606c07a68a78" data-component="FileUpload" data-props="{&quot;hasPlaceholderImg&quot;:true,&quot;currentFile&quot;:&quot;f3bf5e29ae84d48cc8a0de9bde43673adbdd381b444b42e4276a8f55f726&quot;,&quot;imgixSource&quot;:&quot;maji-production&quot;,&quot;model&quot;:&quot;user&quot;,&quot;attachment&quot;:&quot;profile_photo&quot;,&quot;submitButtonToDisableId&quot;:&quot;saveProfile&quot;,&quot;header&quot;:&quot;Profile Photo&quot;}">
                    <div class="input-wrapper" data-reactroot="">
                      <div class="hidden input">
                        <div class="placeholder-img"></div>
                        <div class="inputs"><label>Profile Photo</label><input type="hidden" name="user[profile_photo]" value="">
                          <div class="fileUpload button button--small button--grey-20"><span>Upload
                              a Photo</span><input type="file" data-as="file" data-direct="true" data-url="/attachments/cache" name="user[profile_photo]"></div>
                        </div>
                      </div>
                      <div class="upload"><img src="https://maji-production-store.imgix.net/f3bf5e29ae84d48cc8a0de9bde43673adbdd381b444b42e4276a8f55f726?crop=faces&amp;fit=crop&amp;h=70&amp;ixjsv=2.2.4&amp;w=70">
                        <div class="inputs"><label>Profile Photo</label>
                          <p>Remove your current photo to upload a new one.</p><a><i class="cw-icon-remove"></i>Delete current photo</a><input type="hidden" name="user[remove_profile_photo]" value="false">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="input-wrapper"><label class="string optional" for="user_title">Title</label><select class="select optional" name="user[title]" id="user_title">
                  <option value=""></option>
                  <option value="Mr">Mr</option>
                  <option value="Mrs">Mrs</option>
                  <option value="Ms">Ms</option>
                  <option value="Miss">Miss</option>
                  <option value="Dr">Dr</option>
                  <option value="Mx">Mx</option>
                </select></div>
              <div class="input-wrapper"><label class="string required" for="user_full_name"><abbr title="required">*</abbr> Full name</label><input required="required" data-parsley-error-message="Please enter your full name." class="string required"
                  aria-required="true" placeholder="Enter your full name" maxlength="150" size="150" type="text" value="Habiba Hegazy" name="user[full_name]" id="user_full_name"></div>

              <div class="input input-wrapper date optional user_birthday"><label class="date optional" for="user_birthday_2i">Birthday (optional)</label><select id="user_birthday_2i" name="user[birthday(2i)]" class="date optional month">
                  <option value="">MM</option>
                  <option value="1">01</option>
                  <option value="2">02</option>
                  <option value="3">03</option>
                  <option value="4">04</option>
                  <option value="5">05</option>
                  <option value="6">06</option>
                  <option value="7">07</option>
                  <option value="8">08</option>
                  <option value="9">09</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select>
                <select id="user_birthday_3i" name="user[birthday(3i)]" class="date optional day">
                  <option value="">DD</option>
                  <option value="1">01</option>
                  <option value="2">02</option>
                  <option value="3">03</option>
                  <option value="4">04</option>
                  <option value="5">05</option>
                  <option value="6">06</option>
                  <option value="7">07</option>
                  <option value="8">08</option>
                  <option value="9">09</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                  <option value="18">18</option>
                  <option value="19">19</option>
                  <option value="20">20</option>
                  <option value="21">21</option>
                  <option value="22">22</option>
                  <option value="23">23</option>
                  <option value="24">24</option>
                  <option value="25">25</option>
                  <option value="26">26</option>
                  <option value="27">27</option>
                  <option value="28">28</option>
                  <option value="29">29</option>
                  <option value="30">30</option>
                  <option value="31">31</option>
                </select>
                <select id="user_birthday_1i" name="user[birthday(1i)]" class="date optional year">
                  <option value="">YYYY</option>
                  <option value="2019">2019</option>
                  <option value="2018">2018</option>
                  <option value="2017">2017</option>
                  <option value="2016">2016</option>
                  <option value="2015">2015</option>
                  <option value="2014">2014</option>
                  <option value="2013">2013</option>
                  <option value="2012">2012</option>
                  <option value="2011">2011</option>
                  <option value="2010">2010</option>
                  <option value="2009">2009</option>
                  <option value="2008">2008</option>
                  <option value="2007">2007</option>
                  <option value="2006">2006</option>
                  <option value="2005">2005</option>
                  <option value="2004">2004</option>
                  <option value="2003">2003</option>
                  <option value="2002">2002</option>
                  <option value="2001">2001</option>
                  <option value="2000">2000</option>
                  <option value="1999">1999</option>
                  <option value="1998">1998</option>
                  <option value="1997">1997</option>
                  <option value="1996">1996</option>
                  <option value="1995">1995</option>
                  <option value="1994">1994</option>
                  <option value="1993">1993</option>
                  <option value="1992">1992</option>
                  <option value="1991">1991</option>
                  <option value="1990">1990</option>
                  <option value="1989">1989</option>
                  <option value="1988">1988</option>
                  <option value="1987">1987</option>
                  <option value="1986">1986</option>
                  <option value="1985">1985</option>
                  <option value="1984">1984</option>
                  <option value="1983">1983</option>
                  <option value="1982">1982</option>
                  <option value="1981">1981</option>
                  <option value="1980">1980</option>
                  <option value="1979">1979</option>
                  <option value="1978">1978</option>
                  <option value="1977">1977</option>
                  <option value="1976">1976</option>
                  <option value="1975">1975</option>
                  <option value="1974">1974</option>
                  <option value="1973">1973</option>
                  <option value="1972">1972</option>
                  <option value="1971">1971</option>
                  <option value="1970">1970</option>
                  <option value="1969">1969</option>
                  <option value="1968">1968</option>
                  <option value="1967">1967</option>
                  <option value="1966">1966</option>
                  <option value="1965">1965</option>
                  <option value="1964">1964</option>
                  <option value="1963">1963</option>
                  <option value="1962">1962</option>
                  <option value="1961">1961</option>
                  <option value="1960">1960</option>
                  <option value="1959">1959</option>
                  <option value="1958">1958</option>
                  <option value="1957">1957</option>
                  <option value="1956">1956</option>
                  <option value="1955">1955</option>
                  <option value="1954">1954</option>
                  <option value="1953">1953</option>
                  <option value="1952">1952</option>
                  <option value="1951">1951</option>
                  <option value="1950">1950</option>
                  <option value="1949">1949</option>
                  <option value="1948">1948</option>
                  <option value="1947">1947</option>
                  <option value="1946">1946</option>
                  <option value="1945">1945</option>
                  <option value="1944">1944</option>
                  <option value="1943">1943</option>
                  <option value="1942">1942</option>
                  <option value="1941">1941</option>
                  <option value="1940">1940</option>
                  <option value="1939">1939</option>
                  <option value="1938">1938</option>
                  <option value="1937">1937</option>
                  <option value="1936">1936</option>
                  <option value="1935">1935</option>
                  <option value="1934">1934</option>
                  <option value="1933">1933</option>
                  <option value="1932">1932</option>
                  <option value="1931">1931</option>
                  <option value="1930">1930</option>
                  <option value="1929">1929</option>
                  <option value="1928">1928</option>
                  <option value="1927">1927</option>
                  <option value="1926">1926</option>
                  <option value="1925">1925</option>
                  <option value="1924">1924</option>
                  <option value="1923">1923</option>
                  <option value="1922">1922</option>
                  <option value="1921">1921</option>
                  <option value="1920">1920</option>
                  <option value="1919">1919</option>
                  <option value="1918">1918</option>
                  <option value="1917">1917</option>
                  <option value="1916">1916</option>
                  <option value="1915">1915</option>
                  <option value="1914">1914</option>
                  <option value="1913">1913</option>
                  <option value="1912">1912</option>
                  <option value="1911">1911</option>
                  <option value="1910">1910</option>
                  <option value="1909">1909</option>
                  <option value="1908">1908</option>
                  <option value="1907">1907</option>
                  <option value="1906">1906</option>
                  <option value="1905">1905</option>
                  <option value="1904">1904</option>
                  <option value="1903">1903</option>
                  <option value="1902">1902</option>
                  <option value="1901">1901</option>
                  <option value="1900">1900</option>
                  <option value="1899">1899</option>
                </select>
              </div>

              <div class="input input-wrapper tel optional user_phone_num"><label class="tel optional" for="user_phone_num">Phone number (optional)</label><input class="string tel optional" type="tel" name="user[phone_num]" id="user_phone_num"></div>
              <div id="4d9ef08542376eac41ade73a70337262" data-component="LocationAutocomplete" data-props="{&quot;location&quot;:null,&quot;locationData&quot;:null,&quot;apiKey&quot;:&quot;AIzaSyCexgrI8llMYG-Kwnnvtc-ZFeSPOe4qfB8&quot;}">
                <div class="input-wrapper"><input id="user_location_data" name="user[location_data]" type="hidden" value=""><label class="string optional" for="user_location">Location
                    (optional)</label>
                  <div class="geosuggest">
                    <div class="geosuggest__input-wrapper"><input class="geosuggest__input" type="text" autocomplete="off" id="user_location" name="user[location]" placeholder="City, state or zip code" value=""></div>
                    <div class="geosuggest__suggests-wrapper">
                      <ul class="geosuggest__suggests geosuggest__suggests--hidden"></ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="content-divider"></div>
              <div id="1578954964a4e19d58462af4b16d1b27" data-component="PrivacyModeSwitcher" data-props="{&quot;isInvisible&quot;:false,&quot;privacyOnHint&quot;:&quot;Your profile and campaigns are currently invisible. Turn privacy mode OFF to make them visible again.&quot;,&quot;privacyOffHint&quot;:&quot;Turn privacy mode ON to make your profile and campaigns invisible.&quot;}">
                <div class="py-2" data-reactroot="">
                  <div class="switch-wrapper mb-1"><label class="label-switch small"><input type="hidden" name="user[visible]" value="1"><input type="checkbox" id="user_invisible" name="user[visible]" value="0">
                      <div class="checkbox"></div>
                    </label><label class="privacy-state" for="user_invisible">Privacy Mode
                      <!-- -->Off</label></div>
                  <p class="em ">Turn privacy mode ON to make your profile and campaigns
                    invisible.</p>
                </div>
              </div>
              <div class="content-divider"></div>
              <div class="actions"><input type="submit" name="commit" value="Save Changes" class="button center" id="saveProfile" data-disable-with="Save Changes"></div>
            </form>
          </div>
        </div><a class="hidden" data-behavior="Modal" href="#confirm-invisibility"></a>
        <div class="hidden" id="confirm-invisibility">
          <div class="modal-dialog">
            <h1 class="h40">Making your account invisible will hide your profile and all your
              campaigns. Are you sure you want to go invisible?</h1><a class="button button--small button--cw-red" data-confirm-invisibility="true" href="#">Yes, go invisible</a><a class="button button--small button--grey-10" data-close-modal="#confirm-invisibility"
              data-behavior="CloseModal" href="#">No</a>
          </div>
        </div>
      </div>
      <div class="large-6 medium-12 small-12 columns right-side">
        <div class="settings module update-account">
          <div class="header">
            <div class="title">
              <h1 class="h60">Update Account</h1>
            </div>
          </div>
          <div class="content">
            <div class="label">
              <p class="p30">Email Address</p>
              <p class="p40 email">habibahegazy63@gmail.com</p>
            </div>
            <div class="links"><a class="update-link" href="/account/email/change">Change</a></div>
          </div>
          <div class="content password">
            <div class="label">
              <p class="p30">Password</p>
            </div>
            <div class="links"><a class="update-link" href="/account/password/change">Change password</a></div>
          </div>
        </div>
        <div class="settings module update-email">
          <div class="header">
            <div class="title">
              <h1 class="h60">Notification Preferences</h1>
            </div>
          </div>
          <div class="content">
            <div class="label">
              <p class="p30">Email Settings</p>
            </div>
            <div class="links"><a class="update-link" href="/unsubscribe?access_token=362fd2271411d95597e88aaad2f2e4e73651dfa7d41344d6e4ca6f93bb54bef7&amp;email=habibahegazy63%40gmail.com">Change</a></div>
          </div>
        </div>
      </div>
    </div>
    
  </div>

  <script src="../../js/donor/superfish.min.js"></script>
  <script src="../../js/donor/jquery.magnific-popup.min.js"></script>
  <script src="../../js/donor/owl.carousel.min.js"></script>
  <script src="../../js/donor/jquery.counterup.min.js"></script>
  <script src="../../js/donor/slider.js"></script>
  <script src="../../js/sweetalert2.js"></script>

</body>

</html>

<script>

  var payment_options = new Array();
  var Pay_Method_opt_id = new Array();
  var selected_payment_method_id;

  var dropdown_dr;
  var dropdown_pm;
  var dropdown_cat;

  var set = document.getElementById("settings_div");
  set.style.display="none";
  var don = document.getElementById("donate-form");
  var flag_don = -1;
  var flag_dash = -1;
  var flag_set = -1;
  $(document).on('click', '#dashboard', function(e) {
       flag_don = -1;
       flag_set = -1;
      if(flag_dash!==0) {
          $(".donate-now, .donation-history").fadeIn();
          $(don).fadeOut();
          $(set).fadeOut();
          flag_dash = 0;
      }
  });

  $(document).on('click', '#donate', function(e) {
      flag_dash = -1;
      flag_set = -1;
   if(flag_don!==0) {
    $(set).fadeOut();
    $(".donate-now, .donation-history").fadeOut(function () {
        flag_don = 0;
        $("#donate-form").fadeIn();
    });
   }
  });

  $(document).on('click', '#settings', function(e) {
      flag_dash = -1;
      flag_don = -1;
      if(flag_set!==0) {
          $(".donate-now, .donation-history").fadeOut();
          $(don).fadeOut();
          $(set).fadeIn();
          flag_set = 0;
      }
  });


  $(document).on('click', '#donate', function(e) {

      e.preventDefault();
      e.stopImmediatePropagation();

      // Reasons
      $.ajax({
          url: '../controller/donor/select_reasons.php',
          type: 'POST',
          dataType: "JSON",
          success: function(data) {

              console.log(data);

              var text = "";

              for (var key in data) {
                  text += "<option value='" + key + "'>" + data[key] + "</option>";
              }

              document.getElementById("dr").innerHTML ="<select id='selected_dr'>"+ text + "</select>";
          },
          error: function(data) {
            console.log(data);

          }
      });

      //Project Category
      $.ajax({
          url: '../controller/donor/select_category.php',
          type: 'POST',
          dataType: "JSON",
          success: function(data) {
              console.log(data);

              var text = "";

              for (var key in data) {
                  text += "<option value='" + key + "'>" + data[key] + "</option>";
              }

              document.getElementById("pc").innerHTML ="<select id='selected_cat'>"+ text + "</select>";
          },
          error: function(data) {
              console.log(data);
          }
      });

      //Payment method
      $.ajax({
            url: '../controller/donor/select_payment_method.php',
            type: 'POST',
            dataType: "JSON",
            success: function(data) {
                console.log(data);

                var text = "";

                for (var key in data) {
                    text += "<option value='" + key + "'>" + data[key] + "</option>";
                }

                document.getElementById("pm").innerHTML ="<select id='selected_pm'>"+ text + "</select>";
            },
            error: function(data) {
              console.log(data);

            }
      });
  });

  $(document).on('click', '#n1', function(e) {

      e.preventDefault();
      e.stopImmediatePropagation();

      $('#payInfo').empty();
      $('#showinstead').empty();

      dropdown_dr = document.getElementById("selected_dr");
      dropdown_pm = document.getElementById("selected_pm");
      dropdown_cat = document.getElementById("selected_cat");

      // see if the donation reason needs fields

      var donation_reason_id = dropdown_dr.options[dropdown_dr.selectedIndex].value;

      $.ajax({
          url: '../controller/donor/select_reason_sendtoID.php',
          data: { selected_reason: donation_reason_id},
          type: 'POST',
          dataType: "JSON",
          success: function(data) {
              console.log(data);
              var sendtoid = data;
              if(sendtoid != 0) {
                  $.ajax({
                      url: '../controller/donor/select_send_through.php',
                      type: 'POST',
                      dataType: "JSON",
                      success: function(data) {

                          console.log(data);
                          var text = "";
                          for (var key in data) {
                              text += "<option value='" + key + "'>" + data[key] + "</option>";
                          }

                          document.getElementById("tec").innerHTML ="<select id='Contact_Through'>"+ text + "</select>";

                      },
                      error: function(data) {
                          console.log(data);
                      }
                  });
              }
              else{
                  document.getElementById("tec").innerHTML ="";
                  document.getElementById("userInfo").style.display = "none";
                  document.getElementById("showinstead").innerHTML += 'Thanks For Helping Sending Water to others';
              }
          },
          error: function(data) {
              console.log(data);
          }
      });

      //more payment options
      selected_payment_method_id = dropdown_pm.options[dropdown_pm.selectedIndex].value;

      $.ajax({
          url: '../controller/donor/fileds_payment_method.php',
          data: {paymentMethod:selected_payment_method_id},
          type: 'POST',
          dataType: "JSON",
          success: function(data) {
              console.log(data);
              //min max donation values
              $("#dv").attr({
                  "min" : data[3]

              });
              
              var getdata = [];
              getdata = data;
              if(getdata.length != 0){

                  var data1 = getdata[1];

                  for(var j=0;j<data1.length;j++)
                  {
                      payment_options[j] = getdata[1][j];
                  }

                  for(var j =0;j<data1.length;j++)
                  {
                      Pay_Method_opt_id[j] = getdata[0][j];
                  }

                  var Pay_Method_opt_type = new Array();
                  for(var j =0;j<data1.length;j++)
                  {
                      Pay_Method_opt_type[j] = getdata[2][j];
                  }

                  var i = 0;
                  var len = payment_options.length;
                  var text = "";
                  for (; i < len; i++) {

                      text += payment_options[i] + "<input type='"+Pay_Method_opt_type[i]+"' id='" + payment_options[i] + "'/>";
                  }
                  document.getElementById("payInfo").innerHTML += text;

              }else{
                  payment_options = new Array()
              }

          },
          error: function(data) {
             console.log(data);
          }
      });

  });

  $(document).on('click', '#DoDonation', function(e) {

      var payment_method_id = dropdown_pm.options[dropdown_pm.selectedIndex].value;

      var donation_reason_id = dropdown_dr.options[dropdown_dr.selectedIndex].value;

      var category_id = dropdown_cat.options[dropdown_cat.selectedIndex].value;

      var donation_value = document.getElementById("dv").value;

      var payment_values = [];
      for (var i =0; i <payment_options.length; i++) {
          payment_values[i] = document.getElementById(payment_options[i]).value;
      }


      var reciever_info = new Array();
      if(document.getElementById("Contact_Through") != null) {

          reciever_info[0] = document.getElementById("receiver_name").value;
          reciever_info[1] = document.getElementById("mobileNumber").value;
          reciever_info[2] = document.getElementById("email").value;

          var ct  = document.getElementById("Contact_Through");
          var contact_through_id = ct.options[ct.selectedIndex].value;
          reciever_info[3] = contact_through_id;


      }

      $.ajax({
          url: '../controller/donor/insert_donation.php',
          data: { reciever_info:reciever_info, payment_values: payment_values, selected_ids: Pay_Method_opt_id,
              payment_method_id: payment_method_id, donation_reason_id:donation_reason_id,
              category_id:category_id, donation_value:donation_value},
          type: 'POST',
          dataType: "JSON",
          success: function(data) {

            console.log(data);

              window.open(data);
              window.location.replace("donator.php");
          },
          error: function(data) {
            console.log(data);
          }
      });


  });


</script>


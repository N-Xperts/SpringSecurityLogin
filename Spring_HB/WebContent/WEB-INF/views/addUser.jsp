<%@include file="header.jsp"%> 

<div class="wrapper">
<%@include file="sidebar.jsp"%> 


<style>

p {color:red}
.user {
  display: inline-block;
  width: 150px;
  height: 150px;
  border-radius: 50%;
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
}

</style>

<script type="text/javascript">

function FirstName(val) {
	
	var firstName = form.firstName;
	//window.alert(userName)
		if (firstName.value == "" || firstName.value == null) {
		//window.alert("wwww")
		document.getElementById("firstNameLabel").innerHTML = "<p>This value is required</p>";
		return true;
	} else {
		//window.alert("rrrr")
		document.getElementById('firstNameLabel').innerHTML = "";
	}
	}
	
function LastName(val) {
	
	var lastName = form.lastName;
	//window.alert(userName)
		if (lastName.value == "" || lastName.value == null) {
		//window.alert("wwww")
		document.getElementById("lastNameLabel").innerHTML = "<p>This value is required</p>";
		return true;
	} else {
		//window.alert("rrrr")
		document.getElementById('lastNameLabel').innerHTML = "";
	}
	}
	
function Address(val) {
	
	var address = form.address;
	//window.alert(userName)
		if (address.value == "" || address.value == null) {
		//window.alert("wwww")
		document.getElementById("addressLabel").innerHTML = "<p>This value is required</p>";
		return true;
	} else {
		//window.alert("rrrr")
		document.getElementById('addressLabel').innerHTML = "";
	}
	}
	
function Email(val) {
	
	var email = form.email;
	//window.alert(userName)
		if (email.value == "" || email.value == null) {
		//window.alert("wwww")
		document.getElementById("emailLabel").innerHTML = "<p>This value is required</p>";
		return true;
	} else {
		//window.alert("rrrr")
		document.getElementById('emailLabel').innerHTML = "";
	}
	}
	
function Phone(val) {
	
	var phone = form.phone;
	//window.alert(userName)
		if (phone.value == "" || phone.value == null) {
		//window.alert("wwww")
		document.getElementById("phoneLabel").innerHTML = "<p>This value is required</p>";
		return true;
	} else {
		//window.alert("rrrr")
		document.getElementById('phoneLabel').innerHTML = "";
	}
	}
	
function DateOfBirth(val) {
	
	var dateOfBirth = form.dateOfBirth;
	//window.alert(userName)
		if (dateOfBirth.value == "" || dateOfBirth.value == null) {
		//window.alert("wwww")
		document.getElementById("dateOfBirthLabel").innerHTML = "<p>This value is required</p>";
		return true;
	} else {
		//window.alert("rrrr")
		document.getElementById('dateOfBirthLabel').innerHTML = "";
	}
	}
	
function UserName(val) {
	
	var userName = form.userName;
	//window.alert(userName)
		if (userName.value == "" || userName.value == null) {
		//window.alert("wwww")
		document.getElementById("userNameLabel").innerHTML = "<p>This value is required</p>";
		return true;
	} else {
		//window.alert("rrrr")
		document.getElementById('userNameLabel').innerHTML = "";
	}
	}
	
function Password(val) {
	
	var password = form.password;
	//window.alert(userName)
		if (password.value == "" || password.value == null) {
		//window.alert("wwww")
		document.getElementById("passwordLabel").innerHTML = "<p>This value is required</p>";
		return true;
	} else {
		//window.alert("rrrr")
		document.getElementById('passwordLabel').innerHTML = "";
	}
	}
	
function RePassword(val) {
	
	var rePassword = form.rePassword;
	//window.alert(userName)
		if (rePassword.value == "" || rePassword.value == null) {
		//window.alert("wwww")
		document.getElementById("rePasswordLabel").innerHTML = "<p>This value is required</p>";
		return true;
	} else {
		//window.alert("rrrr")
		document.getElementById('rePasswordLabel').innerHTML = "";
	}
	}
	
	</script>
  <div class="page-content">
    <div class="content container">
      <div class="row">
        <div class="col-md-12">
         <c:if test="${empty userModel}">
          <h2 class="page-title">Fill User Detail</h2>
          </c:if>
          <c:if test="${!empty userModel}">
          <h2 class="page-title">Edit User Detail</h2>
          </c:if>
          
        </div>
      </div>
  
      <div class="row">
        <div class="col-lg-12">
          <div class="widget">
            
            <div class="widget-content">
            
              <div class="panel-body">
              <div class="widget-header"> <i class="icon-file-alt"></i>
              	<h3>Personal Detail</h3>
              </div>
               <br>
               <br>
                
                <form:form action="saveUser" commandName="userMasterBean" class="form-horizontal row-border" name="form" data-validate="parsley" id="validate-form" enctype="multipart/form-data">
                 <form:hidden path="userId" value="${userModel.userid}"/> 
          <%--    <input type="text" style="visibility: hidden"  name="userId" value="${userModel.userid }"/>  --%>
                <div class="form-group lable-padd">
                  <label class="col-sm-3">First Name</label>
                  <div class="col-sm-6">
                    <input type="text"  name="firstName" id="firstName" value="${userModel.firstName }" placeholder="First Name" class="form-control" onblur="FirstName(this.value);"/>
                  	<form:errors path="firstName" cssClass="firstName" cssStyle="color:red"/>
                  	<label id="firstNameLabel"></label>
                  	  <div class="firstName">
                     </div>
                  	
                  	
                  </div>
                </div>
                
                 <div class="form-group lable-padd">
                  <label class="col-sm-3">Last Name</label>
                  <div class="col-sm-6">
                    <input type="text" onblur="LastName(this.value);" value="${userModel.lastName}" name="lastName" id="lastName" placeholder="Last Name"  class="form-control" />
                  	<form:errors path="lastName" cssClass="lastName" cssStyle="color:red"/>
                  	<label id="lastNameLabel"></label>
                  	<div class="lastName">
                     </div>
                  </div>
                </div>
                
                <div class="form-group lable-padd">
                  <label class="col-sm-3">Address</label>
                  <div class="col-sm-6">
                    <textarea onblur="Address(this.value);" name="address" id="address"  placeholder="Permanant Address"  class="form-control" >${userModel.address} </textarea>
                  	<form:errors path="address" cssClass="address" cssStyle="color:red"/>
                  	<label id="addressLabel"></label>
                  	<div class="address">
                     </div>
                  </div>
                </div>
                
                <div class="form-group lable-padd">
                  <label class="col-sm-3">Phone</label>
                  <div class="col-sm-6">
                    <input type="text" onblur="Phone(this.value);" data-type="phone" name="phone" value="${userModel.phone }" id="phone" placeholder="(XXX) XXXX XXX"  class="form-control" />
                 	<form:errors path="phone" cssClass="phone" cssStyle="color:red"/>
                 	<label id="phoneLabel"></label>
                 	<div class="phone">
                     </div>
                  </div>
                </div>
                
                <div class="form-group lable-padd">
                  <label class="col-sm-3">Email</label>
                  <div class="col-sm-6">
                    <input type="text" onblur="Email(this.value);" data-type="email" id="email" name="email" value="${userModel.email}" placeholder="Email address" class="form-control" />
                  	<form:errors path="email" cssClass="email" cssStyle="color:red"/>
                  	<label id="emailLabel"></label>
                  	<div class="email">
                     </div>
                  </div>
                </div>
                
                <div class="form-group lable-padd">
                  <label class="col-sm-3">Date of Birth</label>
                  <div class="col-sm-6">
                    <input type="text" onblur="DateOfBirth(this.value);" data-type="dateIso" id="dateOfBirth" name="dateOfBirth" value="${userModel.dateOfBirth }" placeholder="YYYY-MM-DD" class="form-control" />
                 	<form:errors path="dateOfBirth" cssClass="dateOfBirth" cssStyle="color:red"/>
                 	<label id="dateOfBirthLabel"></label>
                 	<div class="dateOfBirth">
                     </div>
                  </div>
                </div>
                
               <div class="form-group lable-padd">
                <label class="col-sm-3">Select Picture</label>
                <div class="row fileupload-buttonbar">
                                <div class="col-lg-7">
                                <div class="btn-toolbar">
                                  <!--   <!-- The fileinput-button span is used to style the file input field as button
                                   
                                    <span class="btn btn-success fileinput-button" style="margin-right: 410px;">
                                        <i class="icon-plus"></i>
                                        <span>Add files...</span> -->
                                        <input name="file" type="file">
                                   <!--  </span> -->
                                
          		             </div>
                            <!-- The table listing the files available for upload/download -->
                            <table role="presentation" class="table table-striped">
                                <tbody class="files"></tbody>
                            </table>
                        
                  </div>
              
            </div>
            </div>
                
               
                <div class="widget-header"> <i class="icon-file-alt"></i>
              		<h3>Account Detail</h3>
            	</div>
            	 <br>
            	 <br>
            	 <div class="form-group lable-padd">
                  <label class="col-sm-3">UserName</label>
                  <div class="col-sm-6">
                    <input type="text" onblur="UserName(this.value);" name="userName" id="userName" value="${userModel.userRoleModel.getUserAccountModel().getUserName() }" placeholder="Username" class="form-control parsley-validated" />
                  	<form:errors path="userName" cssClass="userName" cssStyle="color:red"/>
                   <label id="userNameLabel"></label>
                   <div class="userName">
                     </div>
                  </div>
                </div>
               
               <br>
               <div class="form-group lable-padd">
                  <label class="col-sm-3">Password</label>
                  <div class="col-sm-6">
                    <input type="text" onblur="Password(this.value);" name="password" id="password" value="${userModel.userRoleModel.getUserAccountModel().getPassword() }" placeholder="Enter Password" class="form-control parsley-validated" />
                   	<form:errors path="password" cssClass="password" cssStyle="color:red"/>
                   	<label id="passwordLabel"></label>
                   	<div class="password">
                     </div>
                  </div>
                </div>
               
               <br>
                 <div class="form-group lable-padd">
                  <label class="col-sm-3">Re-Enter Password</label>
                  <div class="col-sm-6">
                    <input type="text" onblur="RePassword(this.value);" name="rePassword" id="rePassword" placeholder="Re-Enter Password" class="form-control parsley-validated" />
                   <form:errors path="rePassword" cssClass="rePassword" cssStyle="color:red"/>
                   <label id="rePasswordLabel"></label>
                   <div class="rePassword">
                     </div>
                  </div>
                </div>
                
                <br>
              <!--   <div class="form-group lable-padd">
                  <label class="col-sm-3">Select Role</label>
                <div class="btn-group" style="margin-right: 587px">
                  <button class="btn btn-success dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">ROLE_ADMIN</a></li>
                    <li><a href="#">ROLE_USER</a></li>
                  </ul>
                </div>
                </div> -->
                
                <div class="form-group lable-padd">
                  <label class="col-sm-3">Select Role</label>
                <div class="col-sm-6">
                  <select class="btn btn-success " style="margin-right: 350px" data-toggle="dropdown" name="role" id="rolename">
                 	<option value="RLE_USER">USER</option>
                    <option value="ROLE_ADMIN" >ADMIN</option>
                    
                  
                  </select> 
                   
 				<%--  <form:select path="role" class="btn btn-success " style="margin-right: 350px" data-toggle="dropdown"  id="rolename">
                  	<form:option value="ROLE_ADMIN">ADMIN</form:option>
                  	<form:option value="ROLE_USER">USER</form:option>
                  </form:select --%>
                </div>
                </div>
                  <script type="text/javascript"> 
						var roleName = '${userModel.userRoleModel.userRoleName}'; 
						 //  Select any options containing this text
						$("#rolename").find("option:contains('" + roleName +"')").each(function () {
						$(this).attr("selected", "selected");
				   		});
					</script> 
                <br>
                <br>
                
            
              
              <div class="panel-footer">
                <div class="row">
                  <div class="col-sm-6 col-sm-offset-3">
                    <div class="btn-toolbar">
                      <button type="submit" class="btn-primary btn" >Submit</button>
                      <button class="btn-default btn">Cancel</button>
                    </div>
                  </div>
                </div>
              </div>
                </form:form>
              </div>
           
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%@include file="footer.jsp"%> 
<%@include file="header.jsp"%>
  
<div class="wrapper">
<%@include file="sidebar.jsp"%> 
  <div class="page-content">
    <div class="content container">
      <div class="row">
        <div class="col-lg-12">
          <h2 class="page-title">View All Users</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="widget">
            <div class="widget-header"> <i class="icon-table"></i>
              <h3>User Information</h3>
            </div>
            <div class="widget-content">
         
<div class="example_alt_pagination">
      <div id="container">
        <div class="full_width big"></div>
  <div id="demo">
  
    <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
      <thead>
        <tr>
        <th ><center>Image</center></th>
         <th class=""><center>Full Name</center></th>
          <th><center>Email</center></th>
          <th><center>Date Of Birth</center></th>
          <th><center>Phone</center></th>
          <th><center>Address</center></th>
          <security:authorize ifAnyGranted="ROLE_ADMIN">
          <th><center>Action</center></th>
          </security:authorize>
          </tr>
        </thead>
      <tbody>
      <c:if test="${!empty userList }">
      <c:forEach items="${userList }" var="user">
        <tr class="gradeX">
        
         <td> <img class="user" width="100" src="data:image/png;base64,${user.fileString }"></td>
          <td><center>${user.firstName} ${user.lastName }</center></td>
          <td class="hidden-xs"><center>${user.email }</center></td>
          <td class="hidden-xs"><center>${user.dateOfBirth}</center></td>
          <td class="center"><center>${user.phone }</center></td>
          <td class="center"><center>${user.address }</center></td>
          <security:authorize ifAnyGranted="ROLE_ADMIN">
          <td class="center">
          	<a href="editUser?userid=${user.userId }" data-toggle="modal" class="btn btn-success"> EDIT </a> 
            <a href="deleteUser?userid=${user.userId }&action=delete" data-toggle="modal" class="btn btn-danger"> DELETE </a> 
          </td>
          </security:authorize>
          </tr>
         </c:forEach>
        </c:if> 
        
             <!-- <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">aa</td>
          </tr>
             <tr class="gradeX">
          <td>Trident</td>
          <td class="hidden-xs">
            Internet
            Explorer 
            4.0
            </td>
          <td class="hidden-xs">Win 95+</td>
          <td class="center">4</td>
          <td class="center">X</td>
          <td class="center">jd</td>
          </tr> -->
       
        </tbody>
      <tfoot>
        <tr>
          <th> </th>
          <th></th>
          <th></th>
          <th></th>
          <th></th>
          </tr>
        </tfoot>
  </table>
    </div>
        
        
      
        </div>
    </div>
    
    
            </div>
          </div>
        </div>
      </div>
      
      
      
      
      
    </div>
  </div>
</div>

<%@include file="footer.jsp"%> 

<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').dataTable( {
					"sPaginationType": "full_numbers"
				} );
			} );
		</script>



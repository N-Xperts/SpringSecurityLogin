<%@include file="header.jsp"%> 
<div class="wrapper">
<%@include file="sidebar.jsp"%> 

                            <div class="row fileupload-buttonbar">
                                <div class="col-lg-7">
                                <div class="btn-toolbar">
                                    <!-- The fileinput-button span is used to style the file input field as button -->
                                    <span class="btn btn-success fileinput-button">
                                        <i class="icon-plus"></i>
                                        <span>Add files...</span>
                                        <input name="files[]" multiple="" type="file">
                                    </span>
                                
                            </div>
                            <!-- The table listing the files available for upload/download -->
                            <table role="presentation" class="table table-striped">
                                <tbody class="files"></tbody>
                            </table>
                        </form>
                  </div>
              
            </div>
       



            
            


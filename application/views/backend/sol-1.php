<div class="container pb-5 mb-5">
    <div class="question">
        <h1 class="text-danger">Question 1:</h1>
        <div class="fs-3 ps-3">
            <p><b>Form Validation:</b> (Use Codeigniter or Core PHP)</p>
            <p><b>Name:</b> only alphabetic characters allowed (a to z), No numeric allowed</p>
            <p><b>Mobile Number:</b> only digits allowed (0-9)</p>
            <p><b>Email Id:</b> can't be submitted without @ symbol</p>
            <p><b>Password:</b> any character, numeric, special keys allowed</p>
            <p><b>Confirm Password:</b> Show password match or didn't match</p>
            <p><b>File Upload:</b> Multiple File Upload (Images)</p><br>
            <p>
                <b>Submit:</b><br>
                <p class="ps-3">After Submit save the data in the database and view the data in a &lt;div>&gt; without reloading the page Data has to be shown after submission but without the page reload</p>
            </p>

            <p><b>Note:</b> All the validation will be done on the key up base not on submit</p>
        </div>
        <hr style="border: 2px solid;" class="my-4">
        <h1 class="text-success">Solution:</h1>
    </div>
    <!-- Solution Goes Here -->
    <div class="container fs-3 solution">
        <div class="row">
            <div class="col sol-form">
                <form id="my-form" class="border p-5" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label class="form-label">Name<span class="text-danger">*</span> <span class="fs-5">(only alphabet allowed)</span></label>
                        <input name="name" type="text" class="form-control fs-3" id="">
                        <span class="fs-5 text-danger err" id="name_err"></span>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Mobile Number<span class="text-danger">*</span></label>
                        <input name="mobile" type="number" class="form-control fs-3">
                        <span class="text-danger fs-5 err" id="mobile_err"></span>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email address<span class="text-danger">*</span></label>
                        <input name="email" type="email" class="form-control fs-3" >
                        <span class="fs-5 text-danger err" id="email_err"></span>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password<span class="text-danger">*</span> <span class="fs-5">(use any valid character)</span></label>
                        <input name="password" type="password" class="form-control fs-3" >
                        <span class="fs-5 text-danger err" id="password_err"></span>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Confirm Password<span class="text-danger">*</span></label>
                        <input name="cnf_password" type="password" class="form-control fs-3">
                        <span class="fs-5 text-danger err" id="cnf_password_err"></span>
                    </div>

                    <div class="mb-3">
                        <span class="form-label">Upload Multiple Files<span class="text-danger">*</span></span>
                        <input type="file" name="files[]" id="fileInput">
                        <div id="fileList"></div>
                    </div>
                    <button type="submit" class="btn btn-primary fs-3 px-5" id="submit-btn">Submit</button>
                </form>
            </div>
            <div class="col sol-submission bg-dark text-white font-monospace p-5 m-2" id="show-data">

            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" ></script>
<!-- Multiple Files upload Handler -->
<script>
    $(document).ready(function() {
        //selected files
        var selectedFiles = [];

        $('#fileInput').on('change', function(e) {
            // Adding newly selected files to the array
            $.each(e.target.files, function(index, file) {
                if (file.type.match('image.*')) {
                    selectedFiles.push(file);
                } else {
                    alert("Only images are allowed!");
                }
            });
            // Update the display
            $(this).val('');
            updateFileList();
        });

        function updateFileList() {
            var fileList = $('#fileList');
            fileList.empty(); // Clear the current list

            // Create a list item for each file in the selectedFiles array and add it to the fileList
            $.each(selectedFiles, function(index, file) {
                var fileEntry = $('<li>').html(file.name + ' <i class="fa-solid fa-square-xmark" data-index="' + index + '"></i>');
                fileList.append(fileEntry);

                //click event listener to the xmark to remove the file
                fileEntry.find('.fa-square-xmark').on('click', function() {
                    // Geting the index of the file and then removing
                    var fileIndex = $(this).data('index');
                    selectedFiles.splice(fileIndex, 1);
                    updateFileList();
                });
            });
        }

        // Attach the keyup event to all inputs
        $('#my-form input').on('keyup', function(event) {
            let focusedElmnt = document.activeElement.name;
            let formData = $('#my-form').serialize();
            $.ajax({
                url:"<?php echo base_url('Home/checkValidation'); ?>",
                type:"post",
                data: formData,

                success: function(res){
                    let errors = JSON.parse(res);
                    $('#'+focusedElmnt+'_err').text('');
                    $('#'+focusedElmnt+'_err').text(errors[focusedElmnt]);
                }
            })
        });

        // Creating FormData Obj With Multiple Files
        let formDataObj = null;
        $('#my-form').on('submit',(e)=>{
            e.preventDefault();
            formDataObj = new FormData(document.getElementById('my-form'));
            $.each(selectedFiles, function(index, file) {
                formDataObj.append('files[]', file);
            });
        })
        // Submit Handler
        $('#submit-btn').on('click', function(event){
            let formData = $("#my-form").serialize();
            // console.log(new FormData($('#my-form')));
            $('#show-data').html(' ');

            $.ajax({
                url: "<?php echo base_url('Home/checkValidation'); ?>",
                type: 'post',
                data: formData,

                success: function(res){
                    let errors = JSON.parse(res);
                    if(errors['status'] == false){

                        for(let file of formDataObj.getAll('files[]')){
                            console.log(file.name)
                        }
                        // another Ajax request to save the data
                        $.ajax({
                            url: "<?php echo base_url('Home/saveData'); ?>",
                            data: formDataObj,
                            type: 'post',
                            processData: false,  // tell jQuery not to process the data
                            contentType: false,  // tell jQuery not to set contentType

                            success: function(res2){
                                let res2json = JSON.parse(res2);
                                let images = JSON.parse(res2json['images']);
                                if(res2json['status'] == true){
                                    // clearing selectedfiles array and Form 
                                    selectedFiles = [];
                                    $('#fileList').html(' ');
                                    $('#my-form').trigger('reset');

                                    let html = `
                                        <p><b>Name: </b>${res2json['name']}</p>
                                        <p><b>Mobile: </b>${res2json['mobile']}</p>
                                        <p><b>Email: </b>${res2json['email']}</p>
                                        <p><b>Password: </b>${res2json['password']}</p>
                                    `;
                                    if(images.length > 0){
                                        html += "<div class='d-flex'>";
                                        for(let img of images){
                                            html+= `<div><img class="responsive" width="50%" src="<?=base_url();?>public/img/${img}" alt="${img}"><p>${img}</p></div>`;
                                        }
                                        html += "</div>";
                                    }

                                    $('#show-data').html(html);
                                }
                            }
                        });
                    }
                    else{
                        // display err
                        $('.err').html('')
                        $('#name_err').html(errors['name']);
                        $('#mobile_err').html(errors['mobile']);
                        $('#email_err').html(errors['email']);
                        $('#password_err').html(errors['password']);
                        $('#cnf_password_err').html(errors['cnf_password']);
                    }
                }
            });
        })
    });
</script>
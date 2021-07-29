<?php

include_once("../mheader.php");

?>


<div class="app-main__outer">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>MANAGE EXAM</div>
                </div><br>
                <div class="row pt-2">
                    <div class="col-lg-3 col-md-6 col-lg-12">
                        <button class=" btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="border: none; float:center;"><i class="fa fa-book"></i> &nbsp; create exam</button>
                        <button class="course-dash btn btn-primary" data-toggle="modal" data-target="#exampleModal2" style="border: none; float:right;"> <i class="fa fa-bookmark"></i> &nbsp; Exam dashboard</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-12 pt-5">
            <div class="main-card mb-3 card">



                <div class="table-responsive">
                    <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                        <thead>
                            <tr>
                                <th class="text-left pl-4">Exam Title</th>
                                <th class="text-left ">Course</th>
                                <th class="text-left ">Description</th>
                                <th class="text-left ">Time limit</th>
                                <th class="text-left ">Display limit</th>
                                <th class="text-center" width="20%">Action</th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td class="text-left pl-4"></td>
                                <td class="text-left"></td>
                                <td class="text-left"></td>
                                <td class="text-left"></td>
                                <td class="text-left"></td>


                            <td class="text-center">
                                <a href="manage-exam.php?id=<?php echo $selExamRow['ex_id']; ?>" type="button" class="btn btn-primary btn-sm">Manage</a>
                                <button type="button" id="deleteExam" data-id='<?php echo $selExamRow['ex_id']; ?>' class="btn btn-danger btn-sm">Delete</button>
                            </td>
                            </tr>



                            <tr>
                                <td colspan="5">
                                    <h3 class="p-3">No Exam Found</h3>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </div>

    <div class="pop-conainer">
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Exam</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="../Includes/lesson.php" method="post" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="col-lg-12">
                                <input type="hidden" name="course" class="form-control" placeholder="course">
                                <input type="text" name="topic" class="form-control" placeholder="Exam title">
                            </div><br>
                            <div class="col-lg-12">
                                <input type="text" name="course" class="form-control" placeholder="course" value="">
                            </div><br>
                            <div class="col-lg-12">
                                <input type="text" name="description" class="form-control" placeholder="Description">
                            </div><br>
                            <div class="col-lg-12">
                                <input type="text" name="date_time" class="form-control" placeholder="Date time">
                            </div><br>

                            <div class="col-lg-12">
                                <input type="text" name="exam_duration" class="form-control" placeholder="Exam duration">
                            </div><br>

                            

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="submit" name="submit" class="btn btn-primary">Post</button>
                            </div>
                    </form>

                </div>
            </div>




        </div>

    </div>




</div>

<!-- page-wrapper -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- dashboard navbar jquery -->
<script src="../js/main.js"></script>
</body>

</html>
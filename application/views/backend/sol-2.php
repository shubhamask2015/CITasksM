<div class="container pb-5 mb-5">
    <div class="question">
        <h1 class="text-danger">Question 2:</h1>
        <div class="fs-3 ps-3">
            <p><i class="fas fa-angle-double-right"></i> <b>Database:</b> (Use MYSQL) and read solve question from the table</p>
            <p><i class="fas fa-angle-double-right"></i> <b>Table:</b> 'users'</p>
            <div class="user-tbl ps-5">
                <?php foreach($tbl as $row){
                    echo $row->id.', '.$row->name.', '.$row->mobile.', '.$row->status.', '.$row->location.'<br>';
                } ?>
            </div>
            <p>
                <i class="fas fa-angle-double-right"></i> <b>Columns:</b> <br>
                <pre>     'id', 'name', 'mobile', 'status', 'location'</pre>
            </p>
            <p><b>1:</b> You have to fetch the values of id with the condition - Mobile number same (you are not aware of the mobile number values) and status active. </p>
            <p><b>2:</b> location columns arranged in descending order. i.e. location with most occurrences will be at the top then below and so on.</p>
            <p><b>Note:</b> This will be done in a single-line query, if done in multiple queries then it will be discarded from the task.</p>
        </div>
        <hr style="border: 2px solid;" class="my-4">
    </div>
    
    <div class="solution">
        <h1 class="text-success">Solution:</h1>
        
        <!-- Question 1n2 -->
        <div class="ps-3 fs-1">
            <span class=" text-info fw-bold">Ans 1n2:</span>
            <div class="ms-4 fs-3">
                <?php 
                    foreach($res_q2_1n2 as $row){
                        echo $row->id." ".$row->location."<br>";
                    }
                ?>
            </div>
            <p class="fs-4 ps-2 font-monospace text-white bg-dark"><b class="text-warning">MySQL Query: </b>"SELECT id, location FROM (SELECT id, location, (SELECT COUNT(*) FROM users t2 WHERE t2.location = t1.location) AS occurrence FROM users t1 WHERE status = 'active' AND mobile IN(SELECT mobile FROM users GROUP BY mobile, status HAVING status='active' and  COUNT(mobile) > 1)) as t ORDER BY occurrence DESC"</p>
        </div>

        <!-- Question 1 -->
        <div class="ps-3 fs-1 mt-5">
            <span class=" text-info">Ans 1:</span>
            <span>
                <?php 
                    foreach($res_q2_1 as $row){
                        echo $row->id.", ";
                    }
                ?>
            </span>
            <p class="fs-4 ps-2 font-monospace text-white bg-dark"><b class="text-warning">MySQL Query: </b>"SELECT id FROM users WHERE status = 'active' AND mobile IN (SELECT mobile FROM users GROUP BY mobile, status HAVING status = 'active' AND COUNT(mobile) > 1) ORDER BY mobile DESC"</p>
        </div>

        <!-- Question 2 -->
        <div class="ps-3 mt-5 fs-1">
            <span class=" text-info">Ans 2:</span>
            <div class="ms-4 fs-3">
                <?php 
                    foreach($res_q2_2 as $row){
                        echo $row->location."<br>";
                    }
                ?>
            </div>
            <p class="fs-4 ps-2 font-monospace text-white bg-dark"><b class="text-warning">MySQL Query: </b>"SELECT location FROM (SELECT location, COUNT(location) lc FROM users GROUP BY location ORDER BY lc DESC) as sub_tbl"</p>
        </div>
    </div>
</div>

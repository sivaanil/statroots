<div class="inner-content center_div">
    <div class = "table-responsive">
        <table class = "table">

            <h3>Details of <?php echo $model['title']?></h3>
            <img src="<?php
            $model['display_image'] = str_replace("-120x80","",$model['display_image']);
            echo $model['display_image']?>" class="img-rounded" alt="Cinque Terre">
            <tbody>
            <tr>
                <th>Description</th>
                <td><?php echo $model['description']?></td>
            </tr>

            <tr>
                <th>Details</th>
                <td><?php echo $model['content']?></td>
            </tr>

            <tr>
                <th>Date of Event</th>
                <td><?php echo date("d-m-Y",strtotime($model['event_date']))?></td>
            </tr>
            </tbody>

        </table>
    </div>
</div>
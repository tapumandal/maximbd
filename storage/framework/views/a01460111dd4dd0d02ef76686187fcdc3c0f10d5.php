
<?php $__env->startSection('print-body'); ?>

    <center>
        <a href="#" onclick="myFunction()"  class="print">Print & Preview</a>
    </center>
    <?php ($ik = 0); ?>
    <?php $__currentLoopData = $headerValue; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php for($ik;$ik <= 0;$ik++): ?>
            <div class="row">
                <div class="col-md-2 col-sm-2 col-xs-2">
                    <?php if($value->logo_allignment == "left"): ?>
                        <?php if(!empty($value->logo)): ?>
                            <div class="pull-left">
                                <img src="/upload/<?php echo e($value->logo); ?>" height="100px" width="150px" />
                            </div>
                        <?php endif; ?>
                    <?php endif; ?>
                </div>
                <div class="col-md-8 col-sm-8 col-xs-8" style="padding-left: 40px;">
                    <h2 align="center"><?php echo e($value->header_title); ?></h2>
                    <div align="center">
                        <p>FACTORY ADDRESS :  <?php echo e($value->address1); ?> <?php echo e($value->address2); ?> <?php echo e($value->address3); ?></p>
                    </div>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-2">
                    <?php if($value->logo_allignment == "right"): ?>
                        <?php if(!empty($value->logo)): ?>
                            <div class="pull-right">
                                <img src="/upload/<?php echo e($value->logo); ?>" height="100px" width="150px" />
                            </div>
                        <?php endif; ?>
                    <?php endif; ?>
                </div>
            </div>
        <?php endfor; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <div class="row header-bottom">
        <div class="col-md-12 header-bottom-b">
            <span>Purchase Order</span>
        </div>
    </div>
    <br>
    <div  style="background-color: #2b542c; color: #ffffff;" class="col-sm-3 col-sm-offset-9" align="center">
        <h4 class="PONoInList"> PO no: <?php echo e($purchaseOrders[0]->po_no); ?></h4>
    </div>
        <br>
        <br>
    <div class="row body-top">
        <table class="table table-bordered">
            <tr>
                <thead>
                <th>Serial no</th>
                <th>Checking no</th>
                <th>Delivery Date</th>
                <th>ERP code</th>
                <th>Item code</th>
                <th>Size</th>
                <th>Material</th>
                <th>Color</th>
                <th>Unit</th>
                <th>Quantity</th>
                <th>Unit Price</th>
                <th>Total Amount</th>
                </thead>
            </tr>

            <?php
                $j=1;
                $sizes = explode(',', $purchaseOrders[0]->item_sizes);
                $materials = explode(',', $purchaseOrders[0]->materials);
                $gmts_colors = explode(',', $purchaseOrders[0]->gmts_colors);
                $units = explode(',', $purchaseOrders[0]->units);
                $item_quantitys = explode(',', $purchaseOrders[0]->item_quantitys);
                $unit_prices = explode(',', $purchaseOrders[0]->unit_prices);
                $total_amounts = explode(',', $purchaseOrders[0]->total_amounts);
                $spanLength = count($item_quantitys);

                $totalQnty = $item_quantitys[0];
                $totalAmnt = $total_amounts[0];
            ?>
            
            <tbody>
                <tr>
                    <td><?php echo e($j++); ?></td>
                    <td rowspan="<?php echo e($spanLength); ?>" style="vertical-align: middle; /*horiz-align: middle;*/"><b><?php echo e($purchaseOrders[0]->booking_order_id); ?></b></td>
                    <td rowspan="<?php echo e($spanLength); ?>" style="vertical-align: middle; /*horiz-align: middle;*/"><b><?php echo e($purchaseOrders[0]->shipment_date); ?></b></td>
                    <td rowspan="<?php echo e($spanLength); ?>" style="vertical-align: middle; /*horiz-align: middle;*/"><?php echo e($purchaseOrders[0]->erp_code); ?></td>
                    <td rowspan="<?php echo e($spanLength); ?>" style="vertical-align: middle; /*horiz-align: middle;*/"><?php echo e($purchaseOrders[0]->item_code); ?></td>
                    <td><?php echo e($sizes[0]); ?></td>
                    <td><?php echo e($materials[0]); ?></td>
                    <td><?php echo e($gmts_colors[0]); ?></td>
                    <td><?php echo e($units[0]); ?></td>
                    <td><?php echo e($item_quantitys[0]); ?></td>
                    <td><?php echo e($unit_prices[0]); ?></td>
                    <td><?php echo e($total_amounts[0]); ?></td>
                </tr>

                <?php for($i = 1; $i <count($item_quantitys); $i++): ?>
                    <tr>
                        <td><?php echo e($j++); ?></td>
                        <td><?php echo e($sizes[$i]); ?></td>
                        <td><?php echo e($materials[$i]); ?></td>
                        <td><?php echo e($gmts_colors[$i]); ?></td>
                        <td><?php echo e($units[$i]); ?></td>
                        <td><?php echo e($item_quantitys[$i]); ?></td>
                        <td><?php echo e($unit_prices[$i]); ?></td>
                        <td><?php echo e($total_amounts[$i]); ?></td>
                    </tr>
                    <?php
                        $totalQnty += floatval($item_quantitys[$i]);
                        $totalAmnt += floatval($total_amounts[$i]);
                    ?>
                <?php endfor; ?>

                <tr>
                    <td colspan="9"><b> Total</b></td>
                    <td><?php echo e($totalQnty); ?></td>
                    <td></td>
                    <td><?php echo e($totalAmnt); ?></td>
                </tr>
            </tbody>
            
        </table>
    </div>

        
        
        
        
        

    <h5><strong>REMARK</strong></h5>
    <p>If the quantity of goods you recevied is not in confirmity as in packing irst or the qualify, packing problem incurred, please
        inform us in 3days. After this period, you concern about this goods shall not be our responsibility.</p>
    <h5>Please confirm receipt with your signature: </h5><br><br>




    <?php $__currentLoopData = $footerData; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php if(!empty($value->siginingPerson_1)): ?>
            <div class="row">
                <div class="col-md-12 col-xs-12" style="padding-bottom: 20px;">


                    <div class="col-md-8 col-xs-8" style="padding: 5px; padding-left: 50px;">
                        <?php if(!empty($value->siginingPersonSeal_1)): ?>
                            <img src="/upload/<?php echo e($value->siginingPersonSeal_1); ?>" height="100px" width="150px" />
                        <?php endif; ?>
                    </div>

                    <div class="col-md-4 col-xs-4"  style="">
                        <div align="center">
                            <?php if(!empty($value->siginingSignature_1)): ?>
                                <img src="/upload/<?php echo e($value->siginingSignature_1); ?>" height="100px" width="150px" />
                            <?php endif; ?>
                        </div>
                        <div align="center" style="margin:auto;
		    	border: 2px solid black;
		    	padding: 5px;margin-top:30px;">
                            <?php echo e($value->siginingPerson_1); ?>

                        </div>
                    </div>

                </div>
            </div>
        <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    <?php $__currentLoopData = $footerData; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php if(!empty($value->siginingPerson_2)): ?>
            <div class="row">
                <div class="col-md-12 col-xs-12" style="padding-bottom: 20px;">


                    <div class="col-md-8 col-xs-8" style="padding: 5px; padding-left: 50px;">
                        <?php if(!empty($value->siginingPersonSeal_2)): ?>
                            <img src="/upload/<?php echo e($value->siginingPersonSeal_2); ?>" height="100px" width="150px" />
                        <?php endif; ?>
                    </div>

                    <div class="col-md-4 col-xs-4"  style="">
                        <div align="center">
                            <?php if(!empty($value->siginingSignature_2)): ?>
                                <img src="/upload/<?php echo e($value->siginingSignature_2); ?>" height="100px" width="150px" />
                            <?php endif; ?>
                        </div>
                        <div align="center" style="margin:auto;
		    	border: 2px solid black;
		    	padding: 5px;margin-top:30px;">
                            <?php echo e($value->siginingPerson_2); ?>

                        </div>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


    <script type="text/javascript">
        function myFunction() {
            window.print();
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('print_file.layouts.layouts', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
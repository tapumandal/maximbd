<?php $__env->startSection('page_heading', trans("others.mxp_menu_purchase_order_list") ); ?>
<?php $__env->startSection('section'); ?>

<?php $__env->startSection('section'); ?>
    <div>
        <form method="post" id="purchase_order_list_search_form">
            <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
            <div class="col-sm-12">
                
                    <div class="col-sm-3">
                        <label class="col-sm-12 label-control">Supplier</label>
                        <select class="form-control selections" name="supplier_id" id="supplier_id">
                            <?php $__currentLoopData = $suppliers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $supplier): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($supplier->supplier_id); ?>"><?php echo e($supplier->name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                    
                        
                        
                            
                        
                        
                        
                        
                    
                
                
                    <div class="col-sm-3">
                        <label class="col-sm-12 label-control">Delivery Date from</label>
                        <input type="date" name="from_oder_date_search" class="form-control" id="from_oder_date_search">
                    </div>
                    <div class="col-sm-3">
                        <label class="col-sm-12 label-control">Delivery Date to</label>
                        <input type="date" name="to_oder_date_search" class="form-control" id="to_oder_date_search">
                    </div>
                
                <br>
                <div class="col-sm-2">
                    <input class="btn btn-info" type="submit" value="Search" name="booking_advanceSearch_btn" id="booking_advanceSearch_btn">
                </div>
            </div>
        </form>
        <div style="display: none;" class="polistResetBtnAndNo">
            <div class="col-sm-2">
                <button class="btn btn-warning" type="button" id="booking_reset_btn">Reset</button>
            </div>
            <div  style="background-color: #2b542c; color: #ffffff; border-radius: 4px;" class="col-sm-3 col-sm-offset-7" align="center">
                <h4 class="PONoInList"></h4>
            </div>
        </div>
    </div>
    <br>
    <div class="row poTableList" style="display: none">
        <div class="col-md-12 col-md-offset-0">
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
                <?php ($j=1); ?>
                
                    <tbody id="po_list_tbody">
                    </tbody>
                
            </table>

            <div class="col-sm-2 col-sm-offset-10">
                <button class="btn btn-success save_purcahe_order">Get Report</button>
            </div>
            
                
                    
                
            
        </div>
    </div>
    <script type="text/javascript">
        $(".selections").select2();
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.dashboard', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->startSection('page_heading',''); ?>
<?php $__env->startSection('section'); ?>

<?php $increase = $initIncrease; ?>
<form action="<?php echo e(Route('task_action')); ?>" method="POST">
	<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
<table class="table table-bordered mainBody">
    <thead>
    	<tr>
        	<th width="5%">SI</th>
        	<th width="10%">PO/CAT</th>
        	<th width="10%">Item code</th>
        	<th width="15%">Description</th>
        	<th width="10%">Size</th>
        	<th width="10%">TOTAL PCS/MTR</th>
        	<th width="10%">Initial Incrise(%)</th>
        	<th width="10%">1ST DELIVERY</th>
            <th width="10%">Request Date</th>
            <th width="10%">Confirmation Date</th>
        </tr>
    </thead>
    <tbody> 
    	<?php
    		$j = 1;
    		$totalAllQty = 0;
    		$totalAllIncrQty = 0;
    		$totalUsdAmount = 0;
    		$BDTandUSDavarage = 80;
    		$rowspanValue = 0;
    	 ?>
    	 	<?php $__currentLoopData = $sentBillId; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $counts): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    	 		<?php
    	 			$count = 1;
    	 			$rowspanValue += $count;
    	 		 ?>
    	 	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

			<?php
            	$ipoIdInc = 0;
			?>
    		<?php $__currentLoopData = $sentBillId; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

    			<?php
    				$i = 0;
    				$k = 0;

    				$totalQty =0;
    				$totalIncrQty = 0;
    				$itemsize = explode(',', $item->item_size);  				
    				$qty = explode(',', $item->item_quantity);
    				$itemlength = 0;
    				foreach ($itemsize as $itemlengths) {
    					$itemlength = sizeof($itemlengths);
    				}
    				$itemQtyValue = array_combine($itemsize, $qty);		
    			?>
    			
    			
	    			<tr>
	    				<td><?php echo e($j++); ?></td>
	    				<td rowspan="<?php echo e($itemlength); ?>"><?php echo e($item->poCatNo); ?></td>
	    				<td rowspan="<?php echo e($itemlength); ?>"><?php echo e($item->item_code); ?></td>
	    				<td rowspan="<?php echo e($itemlength); ?>"><?php echo e($item->erp_code); ?></td>			    		
			    			<?php if($itemlength >= 1 ): ?>
				    			<td colspan="2" class="colspan-td">  				
				    				<table >
				    					<?php $__currentLoopData = $itemQtyValue; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $size => $Qty): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				    					<?php 
				    						$i++;
				    						$totalQty += $Qty; 
				    					?>
				    					<tr>
				    						<td width="50%"><?php echo e($size); ?></td>
							    			<td width="50%"><?php echo e($Qty); ?></td>
				    					</tr>
				    					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

				    					<?php if( $i > 1 ): ?>
				    					<tr>
				    						<td></td>
				    						<td width="100%"><?php echo e($i); ?><?php echo e($totalQty); ?></td>
				    					</tr>
				    					<?php endif; ?>
				    				</table>
				    			</td>
				    			<td class="colspan-td">
				    			<div class="middel-table">
				    				<table>
				    					<?php $__currentLoopData = $itemQtyValue; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $size => $Qty): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
											<?php
												$k++;
												$totalIncrQty += ceil(($Qty*$increase)/100 + $Qty);
											?>

											<tr>

												<input type="hidden" name="taskType" value="IPO">
												<input type="hidden" name="ipo_increase" value="YES">

												<?php

												?>

												<input type="hidden" name="ipo_id[]" value="<?php echo e($ipoIds[$ipoIdInc]); ?>" >
												<td width="100%">
													<input type="text" name="ipo_increase_percentage[]" value="" placeholder="Percentage">
												</td>

											</tr>
				    					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
										<?php $ipoIdInc = $ipoIdInc+1; ?>

				    					<?php if( $k > 1 ): ?>
				    					<tr>

				    					</tr>
				    					<?php endif; ?>
				    				</table>
				    				</div> 				
				    			</td>
				    		<?php endif; ?>			    		   
			    		<?php 
    						$totalAllQty += $totalQty;
    						$totalAllIncrQty += $totalIncrQty;
    					?>
    					<td></td>
    					<td style="padding-top: 20px;">
    						<?php echo e(Carbon\Carbon::parse($billdata->created_at)->format('d-m-Y')); ?>

    					</td>
    					<td></td>
	    			</tr>
    		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    	
    	  <tr>
		</tr>

	</tbody>
</table>
	<div class="form-group">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<button type="submit" class="btn btn-primary form-control" style="margin-right: 15px;">Save
			</button>
		</div>
		<div class="col-md-5"></div>
	</div>
</form>
<script type="text/javascript">
	function myFunction() {
		$('.colspan-td table').css('font-family','arial, sans-serif');
		$('.colspan-td table').css('border-collapse','collapse');
		$('.colspan-td table').css('width','100%');
		$('.colspan-td table td').css('border','1px solid #DBDBDB');
		$('.colspan-td table td').css('padding','5px');
		$('.colspan-td table tr:first-child td').css('border-top', '0');
		$('.colspan-td table tr td:first-child').css('border-left', '0');
		$('.colspan-td table tr:last-child td').css('border-bottom', '0');
		$('.colspan-td table tr td:last-child').css('border-right', '0');
	    window.print();
	}
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.dashboard', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
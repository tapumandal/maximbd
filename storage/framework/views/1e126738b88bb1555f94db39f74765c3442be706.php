<?php $__env->startSection('page_heading', trans("others.mxp_menu_booking_list") ); ?>
<?php $__env->startSection('section'); ?>

<?php $__env->startSection('section'); ?>
	<button class="btn btn-warning" type="button" id="booking_reset_btn">Reset</button>
	<div id="booking_simple_search_form">
		<div class="form-group custom-search-form col-sm-9 col-sm-offset-2">
			<input type="text" name="bookIdSearchFld" class="form-control" placeholder="Booking Id search" id="booking_id_search">
			<button class="btn btn-info" type="button" id="booking_simple_search">
				Search
			</button>
		</div>
		
		
		
		<button class="btn btn-primary " type="button" id="booking_advanc_search">Advance Search</button>
	</div>
	<div>
		<form id="advance_search_form"  style="display: none" method="post">
			<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
			<div class="col-sm-12">
				<div class="col-sm-3">
					<label class="col-sm-12 label-control">Order date from</label>
					<input type="date" name="from_oder_date_search" class="form-control" id="from_oder_date_search">
				</div>
				<div class="col-sm-3">
					<label class="col-sm-12 label-control">Order date to</label>
					<input type="date" name="to_oder_date_search" class="form-control" id="to_oder_date_search">
				</div>
				<div class="col-sm-3">
					<label class="col-sm-12 label-control">Shipment date from</label>
					<input type="date" name="from_shipment_date_search" class="form-control" id="from_shipment_date_search">
				</div>
				<div class="col-sm-3">
					<label class="col-sm-12 label-control">Shipment date to</label>
					<input type="date" name="to_shipment_date_search" class="form-control" id="to_shipment_date_search">
				</div>
			</div>
			<div class="col-sm-12">
				<div class="col-sm-3">
					<label class="col-sm-12 label-control">Buyer name</label>
					<input type="text" name="buyer_name_search" class="form-control" placeholder="Buyer name search" id="buyer_name_search">
				</div>
				<div class="col-sm-3">
					<label class="col-sm-12 label-control">Company name</label>
					<input type="text" name="company_name_search" class="form-control" placeholder="Company name search" id="company_name_search">
				</div>
				<div class="col-sm-3">
					<label class="col-sm-12 label-control">Attention</label>
					<input type="text" name="attention_search" class="form-control" placeholder="Attention search" id="attention_search">
				</div>
				<br>
				<div class="col-sm-3">
					<input class="btn btn-info" type="submit" value="Search" name="booking_advanceSearch_btn" id="booking_advanceSearch_btn">
				</div>
			</div>

			
			<button class="btn btn-primary" type="button" id="booking_simple_search_btn">Simple Search</button>
		</form>
	</div>
	<br>
	<div class="row">
		<div class="col-md-12 col-md-offset-0">
			<table class="table table-bordered">
				<tr>
					<thead>
					<th>Serial no</th>
					<th>Buyer Name</th>
					<th>Company Name</th>
					<th>Attention</th>
					<th>booking id</th>
					<th>Order Date</th>
					<th>Shipment Date</th>
					<th>Status</th>
					<th>Action</th>
					</thead>
				</tr>
				<?php ($j=1); ?>
				<tbody id="booking_list_tbody">
				<?php $__currentLoopData = $bookingList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<tr id="booking_list_table">
						<td><?php echo e($j++); ?></td>
						<td><?php echo e($value->buyer_name); ?></td>
						<td><?php echo e($value->Company_name); ?></td>
						<td><?php echo e($value->attention_invoice); ?></td>
						<td><?php echo e($value->booking_order_id); ?></td>
						<td><?php echo e(Carbon\Carbon::parse($value->created_at)); ?></td>
						<td></td>
						<td><?php echo e($value->booking_status); ?></td>
						<td>
							<a href="<?php echo e(Route('booking_list_create_ipo', $value->booking_order_id)); ?>" class="btn btn-info">IPO</a>
							<a href="<?php echo e(Route('booking_list_create_mrf', $value->booking_order_id)); ?>" class="btn btn-warning">MRF</a>
							<form action="<?php echo e(Route('booking_list_action_task')); ?>" target="_blank">
								<input type="hidden" name="bid" value="<?php echo e($value->booking_order_id); ?>">
								<button class="btn btn-success">View</button>
							</form>
						</td>
					</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</tbody>
			</table>

			<div id="booking_list_pagination"><?php echo e($bookingList->links()); ?></div>
			<div class="pagination-container">
				<nav>
					<ul class="pagination"></ul>
				</nav>
			</div>
		</div>
	</div>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('layouts.dashboard', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
@extends('layouts.dashboard')
@section('page_heading', trans("others.mxp_menu_booking_view_details") )
@section('section')

    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="col-sm-3" style="font-size: 120%">Booking Details</div>
            <div class="col-sm--3 col-sm-offset-9 "><a href="" class="btn btn-success">Generate Purchase Invoice</a></div>
        </div>
        <div class="panel-body aaa">
            <div class="panel panel-default col-sm-7">
                <br>
                <p >Buyer name:<b> {{ $bookingDetails->buyer_name }}</b></p>
                <p >Company name:<b> {{ $bookingDetails->Company_name }}</b></p>
                <p >Buyer address:<b> {{ $bookingDetails->address_part1_invoice }}{{ $bookingDetails->address_part2_invoice }}</p>
                <p >Mobile num:<b> {{ $bookingDetails->mobile_invoice }}</b></p>
            </div>
            <div class="panel panel-default col-sm-5">
                <br>
                <p >Booking Id:<b> {{ $bookingDetails->booking_order_id }}</b></p>
                <p >Booking status:<b> {{ $bookingDetails->booking_status }}</b></p>
                <p >Oreder Date:<b> {{ $bookingDetails->bookings[0]->orderDate }}</b></p>
                <p >Shipment Date:<b> {{ $bookingDetails->bookings[0]->shipmentDate }}</b></p>
            </div>
            <table class="table table-bordered">
                <tr>
                    <thead>
                        <th>Serial no</th>
                        <th>ERP code</th>
                        <th>Item Code</th>
                        <th>Item Size</th>
                        <th>Item Color</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </thead>
                </tr>
                @php
                    $j=1;
                @endphp
                <tbody>
                @foreach($bookingDetails->bookings as $bookedItem)
                <tr>
                    <td> {{ $j }} </td>
                    <td >
                        {{ $bookedItem->erp_code }}
                    </td>
                    <td> {{ $bookedItem->item_code }} </td>
                    <td> {{ $bookedItem->item_size }} </td>
                    <td> {{ $bookedItem->gmts_color  }} </td>
                    <td> {{ $bookedItem->item_quantity }} </td>
                    <td> {{ $bookedItem->item_price }} </td>
                </tr>
                    @php($j++)
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" style="font-size: 120%">Mrf Details</div>
        <div class="panel-body aaa">
            <table class="table table-bordered">
                <tr>
                    <thead>
                        <th>Serial no</th>
                        <th>MRF Id</th>
                        <th>Item Code</th>
                        <th>Item Size</th>
                        <th>Color</th>
                        <th>MRF Quantity</th>
                        <th>Delivered Quantity</th>
                        <th>MRF Shipment Date</th>
                        <th>MRF Status</th>
                        <th>Action</th>
                    </thead>
                </tr>
                @php($j=1)
                <tbody>
                <tr>
                    <td>1</td>
                    <td>MRF-10082018-0076	</td>
                    <td> 2L.SL-TA.001 </td>
                    <td> EU L CN 175/96A </td>
                    <td> DARK KHAKI </td>
                    <td> 500 </td>
                    <td> 300 </td>
                    <td>2018-08-17</td>
                    <td>Waiting for Goods</td>
                    <td><a class="btn btn-success">Report</a></td>
                </tr>
                {{--@foreach($bookingList as $value)--}}
                    {{--<tr>--}}
                        {{--<td>{{$j++}}</td>--}}
                        {{--<td>{{$value->mrf_id}}</td>--}}
                        {{--<td>{{$value->mrf_quantity}}</td>--}}
                        {{--<td>{{Carbon\Carbon::parse($value->created_at)}}</td>--}}
                        {{--<td>{{$value->shipmentDate}}</td>--}}
                        {{--<td>{{$value->mrf_status}}</td>--}}
                    {{--</tr>--}}
                {{--@endforeach--}}
                </tbody>
            </table>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" style="font-size: 120%">IPO Details</div>
        <div class="panel-body aaa">
            <table class="table table-bordered">
                <tr>
                    <thead>
                        <th>Serial no</th>
                        <th>IPO Id</th>
                        <th>Item Code</th>
                        <th>Item Size</th>
                        <th>Color</th>
                        <th>IPO Quantity</th>
                        <th>Delivered Quantity</th>
                        <th>IPO Shipment Date</th>
                        <th>IPO Status</th>
                        <th>Action</th>
                    </thead>
                </tr>
                @php($j=1)
                <tbody>
                <tr>
                    <td>1</td>
                    <td>IPO-10082018-0076	</td>
                    <td> 2L.SL-TA.001 </td>
                    <td> EU L CN 175/96A </td>
                    <td> DARK KHAKI </td>
                    <td> 500 </td>
                    <td> 200 </td>
                    <td>2018-08-17</td>
                    <td>Waiting for Goods</td>
                    <td><a class="btn btn-success">Report</a></td>
                </tr>
                {{--@foreach($bookingList as $value)--}}
                {{--<tr>--}}
                {{--<td>{{$j++}}</td>--}}
                {{--<td>{{$value->ipo_id}}</td>--}}
                {{--<td>{{$value->ipo_quantity}}</td>--}}
                {{--<td>{{Carbon\Carbon::parse($value->created_at)}}</td>--}}
                {{--<td>{{$value->shipmentDate}}</td>--}}
                {{--<td>{{$value->ipo_status}}</td>--}}
                {{--</tr>--}}
                {{--@endforeach--}}
                </tbody>
            </table>
        </div>
    </div>
@endsection



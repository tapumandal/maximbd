<?php

    namespace App\Http\Controllers\taskController;

use  App\Http\Controllers\dataget\ListGetController;
use App\Http\Controllers\Message\StatusMessage;
use App\Http\Controllers\Controller;
use App\Http\Controllers\RoleManagement;
use App\Model\BookingFile;
use Illuminate\Http\Request;
use Validator;
use Auth;
use DB;
use Illuminate\Support\Facades\Response;
use ZipArchive;
use App\Model\MxpBookingBuyerDetails;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

class BookingListController extends Controller
{
    public function bookingListView(){

        $bookingList = DB::table('mxp_bookingBuyer_details')
            ->where('is_complete', 0)
            ->groupBy('booking_order_id')
            ->orderBy('id','DESC')
            ->paginate(15);

        return view('maxim.booking_list.booking_list_page',compact('bookingList'));
    }

    public function bookingFilesDownload(Request $request){

        $fileinfo = BookingFile::get()->where('booking_buyer_id', $request->booking_buyer_id);


        $files = [];
        $oriFiles = [];

        foreach ($fileinfo as $info){
            array_push($files, 'booking_files/'.$info->file_name_server.'.'.$info->file_ext);
            array_push($oriFiles, 'booking_files/'.$info->file_name_original.'.'.$info->file_ext);
        }

        $bbInfo = MxpBookingBuyerDetails::where('id', $request->booking_buyer_id)->first();

        $zipname = $bbInfo->booking_order_id.'.zip';
        $zip = new ZipArchive;
        $zip->open($zipname, ZipArchive::CREATE);

        $i=0;
        foreach ($files as $file) {
            $zip->addFile($file);
            $zip->renameName($file, $oriFiles[$i]);
            $i++;
        }
        $zip->close();

        header('Content-Type: application/zip');
        header('Content-disposition: attachment; filename='.$zipname);
        header('Content-Length: ' . filesize($zipname));

        readfile($zipname);

        File::delete($zipname);

        return redirect()->back();
    }

    public function showBookingReport(Request $request){
        $bookingReport = DB::select("call getBookinAndBuyerDeatils('".$request->bid."')");

        $companyInfo = DB::table('mxp_header')->where('header_type',11)->get();

        $gmtsOrSizeGroup = DB::select("SELECT gmts_color,GROUP_CONCAT(item_size) as itemSize,GROUP_CONCAT(item_quantity) as quantity from mxp_booking WHERE booking_order_id = '".$request->bid."' GROUP BY gmts_color");

        return view('maxim.orderInput.reportFile',compact('bookingReport','companyInfo','gmtsOrSizeGroup'));
    }

    public function getBookingListByBookingId(Request $request){

        $bookingList = DB::table('mxp_bookingBuyer_details')
            ->where('booking_order_id', 'like', '%'.$request->booking_id.'%')
            ->orderBy('id','DESC')
            ->get();

        return $bookingList;
    }

    public function getBookingListBySearch(Request $request){

        $bookingList = DB::table('mxp_bookingBuyer_details');
        $checkValidation = false;

        if($request->buyer_name_search != '')
        {
            $checkValidation = true;
            $bookingList->where('buyer_name','like','%'.$request->buyer_name_search.'%');
        }
        if($request->company_name_search != '')
        {
            $checkValidation = true;
            $bookingList->where('Company_name','like','%'.$request->company_name_search.'%');
        }
        if($request->attention_search != '')
        {
            $checkValidation = true;
            $bookingList->where('attention_invoice','like','%'.$request->attention_search.'%');
        }
        if($request->from_oder_date_search != '' && $request->to_oder_date_search != '')
        {
            $checkValidation = true;
            if($request->from_oder_date_search == $request->to_oder_date_search)
                $bookingList->whereDate('created_at', $request->from_oder_date_search);
            else
                $bookingList->whereDate('created_at','>=',$request->from_oder_date_search)->whereDate('created_at','<=',$request->to_oder_date_search);
        }
//      if($request->from_shipment_date_search != '' && $request->to_shipment_date_search != '')
//      {
//          $checkValidation = true;
//          if($request->from_shipment_date_search == $request->to_shipment_date_search)
//              $bookingList->whereDate('created_at', $request->from_shipment_date_search);
//          else
//              $bookingList->whereBetween('created_at', [$request->from_shipment_date_search, $request->to_shipment_date_search]);
//      }

        if($checkValidation)
        {
            $bookings = $bookingList->groupBy('booking_order_id')->orderBy('id','DESC')->get();
            return $bookings;
        }
        else
            return null;
    }

    public function createIpoView(Request $request){
        return 'createIpoView and booking id is '.$request->booking_id;
    }

    public function createMrfView(Request $request){
        return 'createMrfView and booking id is '.$request->booking_id;
    }
}

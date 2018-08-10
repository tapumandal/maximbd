$('select[name=product_type]').change(function (e){
    ipoIncPercentageInput(e);
});

function ipoIncPercentageInput(e){
    if($('select[name=product_type]').val() == 'IPO'){
        $('.ipo_increase_percentage').show();
    }else{
        $('.ipo_increase_percentage').hide();
    }
}
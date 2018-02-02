var show = (function(){
    var $button;
    var $modal;
    var $save;
    var $close;
    var $amount;
    var $transaction;
    var $para;
    var $notification

    var bankAccountId;
    var url = "/api/v1/bank_accounts/transaction"

    var a = function(){
    	$button      = $("#btn_transaction");
    	$modal  	 = $("#modal-transaction");
    	$save   	 = $("#btn-save");
    	$close  	 = $("#btn-close");
    	$amount 	 = $("#input_amount");
    	$transaction = $("#select_transaction_type");
    	$para        = $("#parameters")
        $notification= $(".notification")


    	bankAccountId = $para.data("bankAccountId");
    };

        var d =function(){     // disable the values
        $save.prop("disabled", true);
        $modal.prop("disabled", true);
        $amount.prop("disabled",true);
        $close.prop("disabled", true);
        $transaction.prop("disabled",true);
    }; 
               //enable
        var en = function(){    
    	  $save.prop("disabled", false);
          $modal.prop("disabled", false);
          $amount.prop("disabled",false);
          $close.prop("disabled", false);
          $transaction.prop("disabled",false)
       
    
        
    };
   
    // event
    var e =function () {
    	$button.on("click" ,function(){
    		$modal.modal("show")
    	});
         
    	$save.on("click" ,function(){
    	var amount =  $amount.val();
    	var transaction = $transaction.val();	
    		d();
         console.log("amount:"  + amount + "transaction:"  + transaction + "bankAccountId:" + bankAccountId);
    		
            $notification.html("");
        

        $.ajax({
             url: url,
             method: 'POST',
             dataType: 'json',
             data: {
             amount: amount,
             transaction: transaction,
             bank_account_id: bankAccountId,
         },
         success: function(response){
            window.location.href ="/bank_accounts " + bankAccountId;
         },
         error: function(response){
             $notification.html(JSON.parse(response.Text).error.join());
             en();
            } 
          
            });
            });
    };

	var init = function(){
		a();
		e();


	};
     
     return {
    	init: init
      };
})();


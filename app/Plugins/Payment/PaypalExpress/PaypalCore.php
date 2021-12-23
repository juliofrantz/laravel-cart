<?php
#App\Plugins\Payment\PaypalExpress\PaypalCore.php
namespace App\Plugins\Payment\PaypalExpress;

use PayPalCheckoutSdk\Core\PayPalHttpClient;
use PayPalCheckoutSdk\Core\SandboxEnvironment;
use PayPalCheckoutSdk\Orders\OrdersGetRequest;
use PayPalCheckoutSdk\Orders\OrdersCreateRequest;
use PayPalCheckoutSdk\Orders\OrdersPatchRequest;
use PayPalCheckoutSdk\Payments\CapturesRefundRequest;
use App\Plugins\Payment\PaypalExpress\Lib\CreateOrder;
use App\Plugins\Payment\PaypalExpress\Lib\CaptureOrder;


class PaypalCore
{
    public function __construct()
    {
        //
    }


    public static function getOrder($orderId)
    {
        
        $client = self::client();
        $response = $client->execute(new OrdersGetRequest($orderId));
        /**
         * Enable below line to print complete response as JSON.
         */
        //print json_encode($response->result);
        print "Status Code: {$response->statusCode}\n";
        print "Status: {$response->result->status}\n";
        print "Order ID: {$response->result->id}\n";
        print "Intent: {$response->result->intent}\n";
        print "Links:\n";
        foreach($response->result->links as $link)
        {
            print "\t{$link->rel}: {$link->href}\tCall Type: {$link->method}\n";
        }

        print "Gross Amount: {$response->result->purchase_units[0]->amount->currency_code} {$response->result->purchase_units[0]->amount->value}\n";

        // To toggle printing the whole response body comment/uncomment below line
        echo json_encode($response->result, JSON_PRETTY_PRINT), "\n";
    }




















        /**
     * Function to create an refund capture request. Payload can be updated to issue partial refund.
     */
    public static function buildRequestBodyRefund()
    {
        return array(
            'amount' =>
                array(
                    'value' => '20.00',
                    'currency_code' => 'USD'
                )
        );
    }


    /**
     * This function can be used to preform refund on the capture. 
     */
    public static function refundOrder($captureId, $debug=false)
    {
        $request = new CapturesRefundRequest($captureId);
        $request->body = self::buildRequestBodyRefund();
        $client = self::client();
        $response = $client->execute($request);

        if ($debug)
        {
            print "Status Code: {$response->statusCode}\n";
            print "Status: {$response->result->status}\n";
            print "Order ID: {$response->result->id}\n";
            print "Links:\n";
            foreach($response->result->links as $link)
            {
                print "\t{$link->rel}: {$link->href}\tCall Type: {$link->method}\n";
            }
            // To toggle printing the whole response body comment/uncomment below line
            echo json_encode($response->result, JSON_PRETTY_PRINT), "\n";
        }
        return $response;
    }


}

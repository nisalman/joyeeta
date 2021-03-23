<?php

namespace App\Http\Requests;

use App\Transaction;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Request;

class TransactionFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */




    public function rules()
    {
        return [
            'storeLocation' => 'required|not_in:0',
            'store_id' => 'required|not_in:Select Store',
            'customer_number' => 'required',
            'customerName' => 'required',
            'customerAddress' => 'required',
            'receiveable_payment' => 'required',
            'cardNo' => 'required',
            'cardType' => 'required|not_in:0',
            'apprCode' => 'required',
            'dateTime' => 'required',

        ];
    }
    public function messages()
    {
        return [
            'storeLocation.required' => 'Select Location',
            'store_id.required' => 'Select Store',
            'store_id.not_in' => 'Please select a store',
            'customer_number.required' => 'Insert Customer Number',
            'customerName.required' => 'Give a name of Customer',
            'customerAddress.required' => 'Insert Customer address.',
            'contactName.required' => 'Insert customer name',
            'cardType.required' => 'Select card type',
            'cardType.not_in' => 'Select card type',
            'receiveable_payment.required' => 'Insert payment amount',
            'cardNo.required' => 'Insert card no',
            'apprCode.required' => 'Insert appr code',
            'dateTime.required' => 'Insert Date',
        ];
    }
}

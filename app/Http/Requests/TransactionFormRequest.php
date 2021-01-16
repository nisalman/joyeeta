<?php

namespace App\Http\Requests;

use App\Transaction;
use Illuminate\Foundation\Http\FormRequest;

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
            'customerName' => 'required',
            'country_name' => 'required',
            'customerAddress' => 'required',
            'storeNumber' => 'required',
            'contactName' => 'required',
            'netAmount' => 'required',
            'discount' => 'required',
            'coupon' => 'required',
            'finalPayable' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'customerName.required' => 'Give a name of Customer',
            'country_name.required' => 'Insert Mobile number',
            'customerAddress.required' => 'Insert Customer address.',
            'storeNumber.required' => 'Select Store',
            'contactName.required' => 'Insert contact number',
            'netAmount.required' => 'Insert net amount',
            'discount.required' => 'Insert discount',
            'coupon.required' => 'Insert coupon',
            'finalPayable.required' => 'Insert final payable amount',
        ];
    }
}

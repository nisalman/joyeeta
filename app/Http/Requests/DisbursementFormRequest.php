<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DisbursementFormRequest extends FormRequest
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
            'storeId' => 'required',
            'commission' => 'required',
            'isDisvursed' => 'required',
            'paymentAmount' => 'required',
            'discount' => 'required',
            'from' => 'required',
            'to' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'storeId.required' => 'Give a name of Customer',
            'commission.required' => 'Insert Mobile number',
            'isDisvursed.required' => 'Insert Customer address.',
            'paymentAmount.required' => 'Insert payable number',
            'contactName.required' => 'Insert contact number',
            'discount.required' => 'Insert discount amount',
            'from.required' => 'Select date from',
            'to.required' => 'Select to date',
        ];
    }
}

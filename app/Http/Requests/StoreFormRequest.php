<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreFormRequest extends FormRequest
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
            'store_name' => 'required',
            'storeNumber' => 'required',
            'contactNumber' => 'required',
            'paymenMethod' => 'required',
            'acNumber' => 'required',
            'paymentDetails' => 'required',
        ];
    }
        public function messages()
    {
        return [
            'store_name.required' => 'Give a name of Store',
            'storeNumber.required' => 'Insert a Store Number',
            'contactNumber.required' => 'Insert a contact person number.',
            'paymenMethod.required' => 'Insert a payment method',
            'acNumber.required' => 'Insert a account number',
            'paymentDetails.required' => 'Insert payment details',
        ];
    }
}

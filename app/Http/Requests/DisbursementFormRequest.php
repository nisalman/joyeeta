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
            'storeLocation' => 'required',
            'storeId' => 'required',
            'from' => 'required',
            'to' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'storeLocation.required' => 'Select Location',
            'storeId.required' => 'Select store',
            'from.required' => 'Select date from',
            'to.required' => 'Select to date',
        ];
    }
}

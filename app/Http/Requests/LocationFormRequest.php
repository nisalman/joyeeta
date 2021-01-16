<?php

namespace App\Http\Requests;

use App\location;
use Illuminate\Foundation\Http\FormRequest;

class LocationFormRequest extends FormRequest
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
            'slug' => 'required',
            'contactPerson' => 'required',
            'address' => 'required',
            'locationAdmin' => 'required|not_in:Select',
            'locationOperator' => 'required|not_in:Select',
        ];
    }
    public function messages()
    {
        return [
            'store_name.required' => 'Give a name of Store',
            'slug.required' => 'Insert a Slug',
            'contactPerson.required' => 'Insert a contact person number.',
            'address.required' => 'Insert a address',
            'locationAdmin.not_in' => 'Select a admin for location',
            'locationOperator.not_in' => 'Select a operator for location',
        ];
    }
}

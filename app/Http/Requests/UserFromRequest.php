<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserFromRequest extends FormRequest
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
            'name' => 'required',
            'number' => 'required',
            'email' => 'required',
            'address' => 'required',
            'password' => 'required',
            'userType' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'name.required' => 'Give a name of user',
            'password.required' => 'Insert a password',
            'email.required' => 'Insert an email.',
            'mobile.required' => 'Insert a mobile number',
            'address.required' => 'Insert a address',
            'userType.required' => 'Select this user role',
        ];
    }
}

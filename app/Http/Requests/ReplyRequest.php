<?php

namespace App\Http\Requests;

class ReplyRequest extends Request
{
    public function rules()
    {

         return [
                'text' => 'required|min:2',
            ];

    }

    public function messages()
    {
        return [
            'text.min' => '回复内容不能少于2个字符。',
            'text.required' => '回复内容不为空!',
        ];
    }
}

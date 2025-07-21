<?php

namespace App\Mail;

use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Illuminate\Mail\Mailables\Address;

class SendMailResetPasswordMember extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     */
    public function __construct(protected User $user, private $user_account, private $reset_token, private $webinfo)
    {
        //
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            from: new Address('wynnsoft0@gmail.com', 'theone bbgun'),
            subject: 'Reset Password'. date('Y-m-d H:i:s'),
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            view: 'mail.resetpasswordMember',
            with: ([
                'user' => $this->user,
                'reset_token' => $this->reset_token,
                'user_account' => $this->user_account,
                'web_info' => $this->webinfo,
                'linkReset' => env('APP_FRONTEND_URL','') . '/confirm-password/' . $this->reset_token->token
                ]),
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }
}

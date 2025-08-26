<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Illuminate\Mail\Mailables\Address;
use Illuminate\Support\Env;

class ConfirmMember extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     */
    public function __construct(private $memberPro, protected $webInfo)
    {
        $this->webInfo = $webInfo;
        $this->memberPro = $memberPro;
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        // return new Envelope(
        //     subject: 'Confirm Member',
        // );

        return new Envelope(
            from: new Address('wynnsoft0@gmail.com', 'green global'),
            subject: 'Confirm Member You.',
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            markdown: 'mail.confirm_member',
            with: ([
                'data' => $this->memberPro,
                'web_info' => $this->webInfo,
                'url' => env('APP_URL', 'http://localhost:8000') . '/login',
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

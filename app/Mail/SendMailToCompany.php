<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class SendMailToCompany extends Mailable
{
    use Queueable, SerializesModels;

    protected $nameCustomer;
    protected $emailCustomer;
    protected $phoneCustomer;
    protected $subjectCustomer;
    protected $messageCustomer;
    protected $webInfo;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($nameCustomer, $emailCustomer, $phoneCustomer, $subjectCustomer, $messageCustomer, $webInfo)
    {
        $this->nameCustomer = $nameCustomer;
        $this->emailCustomer = $emailCustomer;
        $this->phoneCustomer = $phoneCustomer;
        $this->subjectCustomer = $subjectCustomer;
        $this->messageCustomer = $messageCustomer;
        $this->webInfo = $webInfo;
    }

    public function build(){
        return $this->subject("แจ้งเตือนอีเมล หัวข้อ: {$this->subjectCustomer} " . date('Y-m-d H:i:s'))
                    ->markdown('mail.mailcompany')
                    ->with([
                        'name_customer' => $this->nameCustomer,
                        'email_customer' => $this->emailCustomer,
                        'phone_customer' => $this->phoneCustomer,
                        'subject_customer' => $this->subjectCustomer,
                        'message_customer' => $this->messageCustomer,
                        'web_info' => $this->webInfo,
                    ]);
    }
}

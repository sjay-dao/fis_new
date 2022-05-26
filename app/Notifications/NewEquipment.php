<?php

namespace App\Notifications;

use App\OtherEquipment;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class NewEquipment extends Notification implements ShouldQueue
{
    use Queueable;
    public $otherEquipment;
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($otherEquipment)
    {
        $this->otherEquipment = $otherEquipment;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
                    ->greeting('Good Day,')
                    ->subject('New Equipment Added')
                    ->line($this->otherEquipment->adoptor->name)
                    ->line('Added new equipment '.$this->otherEquipment->name.' '.' funds by '.$this->otherEquipment->sourceOfFunds)
                    ->action('See more information', url('/'));
                    
    }
    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}

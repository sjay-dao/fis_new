<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class NewQuestionPost extends Notification implements ShouldQueue
{
    use Queueable;

    public $forum;
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($forum)
    {
        $this->forum = $forum;
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
                    ->greeting('Hello Admin')
                    ->subject('New Question was Posted recently')
                    ->line('By'.$this->forum->user->name.':Adoptor->'.$this->forum->user->adoptor->name.'')
                    ->line('To View the Content Please Click View Button')
                    ->line('Title : '.$this->forum->title)
                    ->action('View', url('/'))
                    ->line('Thank you for using our application!');
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

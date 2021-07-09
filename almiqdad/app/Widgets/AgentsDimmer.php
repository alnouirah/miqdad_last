<?php

namespace App\Widgets;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class AgentsDimmer extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\beAgent::count();
        $string = trans_choice('voyager::dimmer.agent', $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-thumbs-up',
            'title'  => "{$count} {$string}",
            'text'   => __('voyager::dimmer.agent_text', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => __('voyager::dimmer.agent_link_text'),
                'link' => route('voyager.ac-beagent.index'),
            ],
            'image' => 'image/widgets/partners-bg.jpg',
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', Voyager::model('User'));
    }
}

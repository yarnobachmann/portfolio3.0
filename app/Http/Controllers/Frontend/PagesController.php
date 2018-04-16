<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Image;
use App\Project;
use App\ProjectView;
use App\About;
use App\Contact;

class PagesController extends Controller
{
  public function home() {
    return view('partials.home');
  }

  public function fotografie() {
    $images = Image::all();
    return view('partials.fotografie', compact('images'));
  }

  public function webdesign() {
    $projects = Project::all();
    return view('partials.webdesign', compact('projects'));
  }

  public function over() {
    $about = About::firstorFail();
    return view('partials.over', compact('about'));
  }

  public function contact() {
    $contact = Contact::firstorFail();
    return view('partials.contact', compact('contact'));
  }

  public function project($project_name) {



    $project_view = ProjectView::find($project_name);

    $project_id = ProjectView::find($project_name)->pluck('project_id');


    $project = Project::find($project_id);



    return view('partials.project', compact('project_view','project'));
  }
}

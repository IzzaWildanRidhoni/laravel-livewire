<?php

namespace App\Http\Livewire;

use App\Contact;
use Livewire\Component;
use Livewire\WithPagination;

class ContactIndex extends Component
{
    use WithPagination;

    // public $data;
    public $statusUpdate = false;
    public $paginate = 5;
    public $search;

    // emit dihandle oleh handleStored
    protected $listeners = [
        'contactStored' => 'handleStored',
        'contactUpdated' => 'handleUpdated'
    ];

    protected $queryString= ['search'];

    public function mount()
    {
        $this->search = request()->query('search' , $this->search );
    }

    public function render()
    {
        return view('livewire.contact-index',[
            //  'contacts' => Contact::latest()->get()
            
            //  'contacts' => Contact::latest()->paginate($this->paginate)
            
            'contacts' =>$this->search === null ? 
            Contact::latest()->paginate($this->paginate) :
            Contact::latest()->where('name','like','%'.$this->search.'%')->paginate($this->paginate)
        ]);
    }

    public function getContact($id)
    {
        $this->statusUpdate = true;
        $contact = Contact::find($id);
        $this->emit('getContact',$contact);
    }

    public function destroy($id)
    {
        if ($id) {
            $data = Contact::find($id);
            $data->delete();
            session()->flash('pesan','Contact  was deleted !');
        }
    }
    
    public function handleStored($contact)
    {
        session()->flash('pesan','Contact '. $contact['name'] .' was stored !');
    }
    
    public function handleUpdated($contact)
    {
        session()->flash('pesan','Contact '. $contact['name'] .' was update !');
        $this->statusUpdate = false;
    }
}

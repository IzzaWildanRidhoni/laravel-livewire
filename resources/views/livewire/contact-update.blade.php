<div>
   <form  wire:submit.prevent="update">
       <input type="hidden" name="" wire:model="contactId">
       <div class="form-group">
           <div class="form-row">
               <div class="col">
                    <input wire:model="name" type="text" class="form-control @error('name') is-invalid @enderror" placeholder="name">
                    @error('name')
                        <span class="invalid-feedback">
                            <strong>{{$message}}</strong>
                        </span>
                    @enderror
                </div>
                <div class="col">
                    <input wire:model="phone" type="text" class="form-control @error('phone') is-invalid @enderror" placeholder="phone">
                    @error('phone')
                        <span class="invalid-feedback">
                            <strong>{{$message}}</strong>
                        </span>
                    @enderror
               </div>
           </div>
       </div>
       <button type="submit" class="btn btn-sm btn-primary">Update</button>
   </form>
</div>

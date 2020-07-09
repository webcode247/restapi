<div class="col-md-6 col-6 offset-3 form-card">
    <div class="card-deck mb-3 text-center">
        <div class="card mb-4 shadow-sm">
        <div class="card-header">
            <h4 class="my-0 font-weight-normal">Create a book</h4>
        </div>
        <div class="card-body">

   <div class="row">
    <div class="col-md-12 order-md-1"> 
                <?php if( isset($_POST['create'])): ?> 
                    <div class="alert alert-danger">
                        <p> <?= \CodeIgniter\Services::validation()->listErrors(); ?></p>
                    </div>
                <?php endif ?>
        </div>
    <div class="col-md-12 order-md-1">
      <h4 class="mb-3"></h4>
      <form class="needs-validation" novalidate method="post" action="book">
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName"> Name</label>
            <input type="text" class="form-control" name="name" placeholder="" value="<?= set_value('name');?>">
          </div>
          <div class="col-md-6 mb-3">
            <label for="name">Isbn</label>
            <input type="text" class="form-control" name="isbn" placeholder="" value="<?= set_value('isbn');?>">
         </div>
        </div>

        <div class="mb-3">
          <label for="username">Authors</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">@</span>
            </div>
            <input type="text" class="form-control" name="authors" placeholder="" value="<?= set_value('authors');?>">
          </div>
        </div>

        <div class="mb-3">
          <label for="country">Country <span class="text-muted"></span></label>
          <input type="text" class="form-control" name="country" placeholder="" value="<?= set_value('country');?>">
        </div>

        <div class="mb-3">
          <label for="numofpages">Number of Pages</label>
          <input type="number" class="form-control" name="num_of_pages" placeholder="" value="<?= set_value('num_of_pages');?>">
        </div>

        <div class="mb-3">
          <label for="address2">Publisher</label>
          <input type="text" class="form-control" name="publisher" placeholder="" value="<?= set_value('publisher');?>">
        </div>

        <div class="mb-3">
          <label for="releaseDate">Release Date</label>
          <input type="date" class="form-control" name="release_date" placeholder="" value="<?= set_value('release_date');?>">
        </div>
        
        <button class="btn btn-primary btn-lg btn-block" type="submit" name="create">Create</button>
      </form>
    </div>
  </div>

        </div>
        
        </div>
    </div>
    </div>

</div>
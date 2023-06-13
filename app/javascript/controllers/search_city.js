  // Adding event listener for form submission on city select change
  $(document).ready(function() {
    $('#city').change(function() {
      $(this).closest('form').submit();
    });
  });

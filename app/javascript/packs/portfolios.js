require("packs/html.sortable")
require("jquery-ui")

var set_positions;

set_positions = () => {
    $('.card-item').each(function (i) {
        $(this).attr('data-pos', i + 1);
    });
}

$(function(){
    set_positions();
    $('.sortable').sortable();
    $('.sortable').sortable().bind('sortupdate', function(e, ui) {
        var update_order;
        update_order = []
        set_positions();
        $('.card-item').each(function (i) {
            update_order.push({
                id: $(this).data('id'),
                position: i + 1
            });
        });
        $.ajax({
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
            },
            type: 'PUT',
            url: '/portfolios/sort',
            data: {
                order: update_order
            }
        });
    });
});
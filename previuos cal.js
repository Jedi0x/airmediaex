
function calculate_total_group(e = "", t = "") {
    var a,
        i,
        n,
        s,
        o,
        l = {},
        d = 0,
        r = 0,
        c = 1,
        p = 0,
        _ = $(".group_items tbody tr"),
        m = $("#discount_area"),
        u = $('input[name="adjustment"]').val(),
        f = $('input[name="discount_percent"]').val(),
        h = $('input[name="discount_total"]').val(),
        v = $(".discount-total-type.selected"),
        g = $('select[name="discount_type"]').val(),
        b = $('input[name="shipping"]').val(),
        k = 0,
        y = 0,
        w = 0;
    $(".tax-area").remove(),
        $.each(_, function() {
            (s = $(this)),
            "" === (c = $(this).find("[data-quantity]").val()) && ((c = 1), $(this).find("[data-quantity]").val(1)),
            (y = $(this).find("td.rate input").val() * c),
            (k = $(this).find("td.discount input.shOw").val()),
            isNaN(k) ||
                ((w = $(this).find("td.discount input.shOw").hasClass("input-discount-group-fixed") ? k : (k / 100) * y),
                    (C = accounting.toFixed($(this).find("td.rate input").val() * c - parseFloat(w), app.options.decimal_places)),
                    (C = parseFloat(C)),
                    (d += C),
                    s.find("td.amount-group").html(format_money(C, !0))),
                (n = $(this).find("select.tax").selectpicker("val")) &&
                $.each(n, function(e, t) {
                    (i = s.find('select.tax [value="' + t + '"]').data("taxrate")),
                    (a = (C / 100) * i),
                    l.hasOwnProperty(t) ?
                        (l[t] = l[t] += a) :
                        0 != i && ((o = t.split("|")), (tax_row = '<tr class="tax-area"><td>' + o[0] + "(" + i + '%)</td><td id="tax_id_' + slugify(t) + '"></td></tr>'), $(m).after(tax_row), (l[t] = a));
                });
        }),
        "" !== f && 0 != f && "before_tax" == g && v.hasClass("discount-type-percent") ? (p = (d * f) / 100) : "" !== h && 0 != h && "before_tax" == g && v.hasClass("discount-type-fixed") && (p = h),
        $.each(l, function(e, t) {
            if ("" !== f && 0 != f && "before_tax" == g && v.hasClass("discount-type-percent"))(total_tax_calculated = (t * f) / 100), (t -= total_tax_calculated);
            else if ("" !== h && 0 != h && "before_tax" == g && v.hasClass("discount-type-fixed")) {
                t -= (t * ((h / d) * 100)) / 100;
            }
            (r += t), (t = format_money(t)), $("#tax_id_" + slugify(e)).html(t);
        }),
        (r += d),
        "" !== f && 0 != f && "after_tax" == g && v.hasClass("discount-type-percent") ? (p = (r * f) / 100) : "" !== h && 0 != h && "after_tax" == g && v.hasClass("discount-type-fixed") && (p = h),
        (r -= p),
        (u = parseFloat(u)),
        isNaN(u) || (r += u);
    var x = "-" + format_money(p);
    $('input[name="discount_total"]').val(accounting.toFixed(p, app.options.decimal_places));
    c = 0;
    var C = 0;
    k = 0;
    if ("" != t) {
        var S = 0;
        $(".item" + t + " tr").each(function() {
                (c = $(this).find("[data-quantity]").val()),
                (y = $(this).find("td.rate input").val() * c),
                (k = $(this).find("td.discount input.shOw").val()),
                isNaN(k) ||
                    ((w = $(this).find("td.discount input.shOw").hasClass("input-discount-group-fixed") ? k : k < 100 ? (k / 100) * y : 0),
                        (C = accounting.toFixed($(this).find("td.rate input").val() * c - parseFloat(w), app.options.decimal_places)),
                        (C = parseFloat(C)),
                        $(this).find("td.amount-group").html(format_money(C, !0)),
                        (S += C));
            }),
            $(".total" + t).attr("data-amount", S),
            $(".total" + t).html(format_money(S));
    }
    b = $('input[name="shipping"]').val();
    isNaN(b) || ((b = parseFloat(b)), (r = b + r)),
        $(".discount-total-group").html(x),
        $(".adjustment-group").html(format_money(u)),
        $(".subtotal-group").html(format_money(d) + hidden_input("subtotal", accounting.toFixed(d, app.options.decimal_places))),
        $(".total-group").html(format_money(r) + hidden_input("total", accounting.toFixed(r, app.options.decimal_places))),
        $(document).trigger("sales-total-calculated");
}
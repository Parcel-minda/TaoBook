// var bookBox = document.getElementsByClassName(".bookBox")[0];

//获取首页的数据
$.ajax({
    url:'data.json',
    type:'get',
    success(res){
        // console.log(res);
        randerData(res);
    }
})
//渲染数据
 function randerData(data){
    data.forEach(function (ele) {
        // console.log(item);
        var bookContent = $('<div class="bookContent"></div>');
        var item = $('<a href="detail.html" class="item"></a>');
        //书的图片
        var bookImg = $('<div class="bookImg"></div>');
        var Img = $('<img src="" alt="">');
        Img.prop('src',ele.img);
        $(bookImg).append(Img);
        //书的信息
        var bookInfo = $('<div class="bookInfo"></div>');
        var part1 = $('<div class="part1"></div>');
        var bookName = $('<span class="bookName"></span>');
        bookName.text(ele.bookname);
        var bookType = $('<span class="bookType"></span>');
        bookType.text(ele.booktype);
        $(part1).append(bookName);
        $(part1).append(bookType);
        $(bookInfo).append(part1);

        var part2 = $('<div class="part2"></div>');

        var author = $('<span class="author"></span>');
        author.text(ele.author + '| ' + ele.press);

        var note = $('<span class="note"></span>');
        note.text(ele.note);

        var price = $('<span class="price"></span>');
        price.text('￥' + ele.price);

        var oriprice = $('<span class="oriprice"></span>');
        oriprice.text('原价' + ele.oriprice + '元');

        $(part2).append(author);
        $(part2).append(note);
        $(part2).append(price);
        $(part2).append(oriprice);

        $(bookInfo).append(part2);
        $(item).append(bookImg);
        $(item).append(bookInfo);
        $(bookContent).append(item);
        $('.bookBox').append(bookContent);
    })
}


//点击导航栏，出现分类列表
$(".nav").click(function () {
   $('#bookList').toggleClass('active');
})

// 修改个人信息并提交
$('#submit-info').click(function () {
   $('.tips-box').css({
      'display':'block'
   })
   return false;
})
//修改用户密码
$('#submit-passwd').click(function () {
   $('.tips-box').css({
      'display':'block'
   })
   return false;
})
//用户提交意见反馈
$('#submit-adv').click(function () {
   $('.tips-box').css({
      'display':'block'
   })
   return false;
})
//卖书提交信息
$('#submit-seilBook').click(function () {
   $('.tips-box').css({
      'display':'block'
   })
   return false;
})
//捐赠提交信息
$('#submit-donateBook').click(function () {
   $('.tips-box').css({
      'display':'block'
   })
   return false;
})

//点击确定或遮罩层，提示框消失
$('.mask').click(function () {
   $('.tips-box').css({
      'display':'none'
   })
})
$('#sure').click(function () {
   $('.tips-box').css({
      'display':'none'
   })
})

//我的发布页面，点击管理
$('.manage').click(function () {
   $('.bookBox').toggleClass('input-box');
    }
)
//实现全选
$('.checkAll').click(function () {
   $(".check").prop("checked",$(this).prop("checked"))//多选框的状态与全选框状态保持一致

})
$(".check").each(function() {
   $(this).click(function () {
      if (!$(this).prop("checked")) {//多选框有一个未选中 全选变为未选中状态
         $(".checkAll").prop("checked", false)
      } else if ($(this).prop("checked")) {
         $(".check").each(function (index, ele) {
            if ($(this).prop("checked")) {
               if (index == $(".check").length - 1) {
                  $(".checkAll").prop("checked", true)//多选框全部选中 全选变为选中状态
               }
               return true//each()跳过本次循环
            } else {
               return false//each()跳出循环
            }
         })
      }
   })
})
//点击删除按钮 删除发布记录
$(".check").each(function () {
   $(this).click(function () {
      if ($(this).prop("checked")) {
         var that = this;
         $('.delBook').click(function () {
            $(that).next().remove();
            $(that).remove();
         })
      }
   })
})


//青协界面
$('.settings').click(function () {
   $('.cont').toggleClass('hidden');
   $('.list').toggleClass('change');
})




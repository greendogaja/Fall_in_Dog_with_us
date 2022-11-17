function showReplyList() {

    var url = "/adopt_dog/adopt_detail";

    var paramData = {
        "bid": "${replyVO.bid}"
    };

    $.ajax({

        type: 'POST',

        url: url,

        data: paramData,

        dataType: 'json',

        success: function(result) {

            var htmls = "";

            if (result.length < 1) {

                htmls.push("등록된 댓글이 없습니다.");

            } else {

                $(result).each(function() {

                    htmls += '<div class="media text-muted pt-3" id="rid' + this.rid + '">';

                    htmls += '<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder:32x32">';

                    htmls += '<title>Placeholder</title>';

                    htmls += '<rect width="100%" height="100%" fill="#007bff"></rect>';

                    htmls += '<text x="50%" fill="#007bff" dy=".3em">32x32</text>';

                    htmls += '</svg>';

                    htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';

                    htmls += '<span class="d-block">';

                    htmls += '<strong class="text-gray-dark">' + this.reg_id + '</strong>';

                    htmls += '<span style="padding-left: 7px; font-size: 9pt">';

                    htmls += '<a href="javascript:void(0)" onclick="fn_editReply(' + this.rid + ', \'' + this.reg_id + '\', \'' + this.content + '\' )" style="padding-right:5px">수정</a>';

                    htmls += '<a href="javascript:void(0)" onclick="fn_deleteReply(' + this.rid + ')" >삭제</a>';

                    htmls += '</span>';

                    htmls += '</span>';

                    htmls += this.content;

                    htmls += '</p>';

                    htmls += '</div>';



                }); //each end



            }

            $("#replyList").html(htmls);



        } // Ajax success end

    }); // Ajax end

};





$(document).on('click', '#btnReplySave', function() {

    var replyContent = $('#content').val();

    var replyReg_id = $('#reg_id').val();



    var paramData = JSON.stringify({
        "content": replyContent

            ,
        "reg_id": replyReg_id

            ,
        "bid": '${replyVO.bid}'

    });



    var headers = {
        "Content-Type": "application/json"

            ,
        "X-HTTP-Method-Override": "POST"
    };



    $.ajax({

        url: "${saveReplyURL}"

            ,
        headers: headers

            ,
        data: paramData

            ,
        type: 'POST'

            ,
        dataType: 'text'

            ,
        success: function(result) {

                showReplyList();



                $('#content').val('');

                $('#reg_id').val('');

            }

            ,
        error: function(error) {

            console.log("에러 : " + error);

        }

    });

});

























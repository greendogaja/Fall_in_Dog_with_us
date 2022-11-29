function userDelete() {

	Swal.fire({
		title: '회원삭제를 하시겠습니까?',
		showDenyButton: true,
		showCancelButton: true,
		confirmButtonText: '네',
		denyButtonText: `아니오`,
	}).then((result) => {
		/* Read more about isConfirmed, isDenied below */
		if (result.isConfirmed) {
			Swal.fire('삭제되었습니다.', '', 'success');
			location.href="userdelete?id=${user.id}";			
		} else if (result.isDenied) {
			Swal.fire('삭제하지 못하였습니다.', '', 'info');
		}
	})//comfirm


}//userDelete
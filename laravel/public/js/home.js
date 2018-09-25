$(document).on("change", "#user_avatar", function() {
	var name = this.files.item(0).name;
	if (name) {
		$(".user-avatar-file-name").html(name);
	}
});
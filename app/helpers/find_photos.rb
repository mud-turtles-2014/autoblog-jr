def find_photos(photos, editor_id)
	photos.where(id: editor_id)
end
class UploadsController < ApplicationController
  def create
    blob = ActiveStorage::Blob.create_before_direct_upload!(blob_params)
    render json: direct_upload_json(blob)
  end


  private
  def blob_params
    params.require(:blob).permit(:filename, :byte_size, :checksum, :content_type, :metadata).to_h.symbolize_keys
  end

  def direct_upload_json(blob)
    blob.as_json(methods: :signed_id).merge(direct_upload: {
      url: blob.service_url_for_firect_upload,
      headers: blob.service_url_for_firect_upload
    })
  end
end

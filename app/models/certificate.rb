class Certificate < ApplicationRecord

	belongs_to :school_user

	mount_uploader :attachment, CertificateUploader



end

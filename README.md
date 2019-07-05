# README

Hệ thống bài thi trắc nghiệm
Flow: Giảng viên tạo đề thi từ bộ câu hỏi đã được phân loại theo chủ để (vd: rails, ruby, OOP,..) tạo ra 1 đề thi kèm theo code, học sinh nhập mã code để làm bài thì

Hệ thống sẽ tự tính điểm của học viên và gửi email đến giảng viên khi có 1 học viên làm xong bài thi

User: Học viên, giảng viên, Admin

Học viên: được tạo và làm bài thi, xem lại bài thi, xem điểm

Giảng viên: Tạo đề thi, thêm sửa xóa câu hỏi, câu trả lời, xem bài thi của học sinh đã làm đề của mình

Admin: có quyền thêm sửa xóa user, câu hỏi, đề thi,...

Tất cả user: có thể chỉnh sửa profile

Câu hỏi: được phân loại theo từng chủ để, là dạng câu hỏi trắc nghiệm có thể chọn 1 hoặc nhiều đáp án đúng

=======================================================================================

Yêu cầu: 

sử dụng gem devise để login, 

sử dụng cancancan để phân quyền

chạy job mỗi ngày gửi thống kê học viên và điểm theo từng đề thi được làm trong ngày cho giảng viên

Viết rspec cho model

Áp dụng Rails Advance

Tuẩn theo coding standard
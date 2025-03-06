require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


-- Vim-Jukit mappings
map("n", "<space>os", ":JukitOpenOutput<cr>", { desc = "Mở cửa sổ đầu ra" })
map("n", "<space>ts", ":JukitOpenTerminal<cr>", { desc = "Mở cửa sổ terminal" })
map("n", "<space>hs", ":JukitOpenHistory<cr>", { desc = "Mở cửa sổ lịch sử" })
map("n", "<space>hd", ":JukitCloseHistory<cr>", { desc = "Đóng cửa sổ lịch sử" })
map("n", "<space>od", ":JukitCloseOutput<cr>", { desc = "Đóng cửa sổ đầu ra" })
map("n", "<space><space>", ":JukitSendCell<cr>", { desc = "Gửi ô hiện tại" })
map("n", "<cr>", ":JukitSendLine<cr>", { desc = "Gửi dòng hiện tại" })
map("v", "<cr>", ":JukitSendSelection<cr>", { desc = "Gửi mã đã chọn" })
map("n", "<space>co", ":JukitNewCodeCellBelow<cr>", { desc = "Tạo ô code bên dưới" })
map("n", "<space>cO", ":JukitNewCodeCellAbove<cr>", { desc = "Tạo ô code bên trên" })
map("n", "<space>ct", ":JukitNewTextCellBelow<cr>", { desc = "Tạo ô văn bản bên dưới" })
map("n", "<space>cd", ":JukitDeleteCell<cr>", { desc = "Xóa ô hiện tại" })
map("n", "<space>np", ":JukitConvertNotebook<cr>", { desc = "Chuyển đổi notebook" })
map("n", "<space>ht", ":JukitConvertToHtml<cr>", { desc = "Chuyển đổi sang HTML" })
map("n", "<space>pd", ":JukitConvertToPdf<cr>", { desc = "Chuyển đổi sang PDF" })
map("n", "<space>ck", ":JukitMoveCellUp<cr>", { desc = "Di chuyển ô lên trên" })
map("n", "<space>cj", ":JukitMoveCellDown<cr>", { desc = "Di chuyển ô xuống dưới" })
map("n", "<space>j", ":JukitScrollHistoryDown<cr>", { desc = "Cuộn lịch sử xuống" })
map("n", "<space>k", ":JukitScrollHistoryUp<cr>", { desc = "Cuộn lịch sử lên" })
map("n", "<space>pos", ":JukitShowImage<cr>", { desc = "Hiển thị hình ảnh" })
map("n", "<space>rc", ":JukitRunAllCells<cr>", { desc = "Chạy tất cả ô" })
map("n", "<space>rs", ":JukitResetShell<cr>", { desc = "Đặt lại shell" })


-- Insert mode navigation
map("i", "<A-j>", "<Left>", { desc = "Move left" })
map("i", "<A-l>", "<Right>", { desc = "Move right" })
map("i", "<A-k>", "<Down>", { desc = "Move down" })
map("i", "<A-i>", "<Up>", { desc = "Move up" })

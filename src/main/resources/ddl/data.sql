-- 创建BorrowersBorrowers表，用于存储借款人信息
CREATE TABLE IF NOT EXISTS Borrowers (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- 主键，自增
    name VARCHAR(100) NOT NULL, -- 借款人姓名
    contact_info VARCHAR(255), -- 联系方式（电话/邮箱等）
    loan_start_date DATE, -- 借款开始日期
    clearance_date DATE, -- 清账日期（如果已清账，则为最后还款日期；否则为空）
    total_loan_amount DECIMAL(10, 2), -- 总借款额
    total_interest_amount DECIMAL(10, 2), -- 总利息额
    remaining_balance DECIMAL(10, 2), -- 剩余还款额
    total_amount DECIMAL(10, 2), -- 总金额（包括本金和利息）
    created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 记录创建时间
    updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- 记录更新时间
);
-- 创建BorrowerDetails表，用于记录所有与借款相关的交易细节
CREATE TABLE IF NOT EXISTS BorrowerDetails (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- 主键，自增
    borrower_id INTEGER NOT NULL, -- 外键，关联到Borrowers表的id
    transaction_type TEXT NOT NULL CHECK (transaction_type IN ('Loan', 'Repayment', 'Interest')), -- 交易类型
    amount DECIMAL(10, 2) NOT NULL, -- 交易金额
    transaction_date DATE NOT NULL, -- 交易日期
    notes TEXT, -- 其他备注或说明
    created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 记录创建时间
    updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 记录更新时间
    FOREIGN KEY (borrower_id) REFERENCES Borrowers(id) -- 设置外键约束
);
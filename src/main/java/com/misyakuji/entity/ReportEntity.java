package com.misyakuji.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportEntity {
    private String date;
    private BigDecimal amount;
    private String remark;
}

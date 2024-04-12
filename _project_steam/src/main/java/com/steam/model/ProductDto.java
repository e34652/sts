package com.steam.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor
public class ProductDto {

    private long num;
    private String name;
    private String genre;
    private String releasedate;
    private int price;
    @NonNull private String simple;
    @NonNull private String detail;
}

package com.steam.model;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class MemberDto {

	private long num;
	@NonNull private String email;
	@NonNull private String password;
	@NonNull private String nickname;
	@NonNull private String authority;
	private String regdate;
	@NonNull private String nationality;
}

package com.dangschool.reservation.mapper;

import java.util.ArrayList;

import com.dangschool.reservation.command.ReservationVO;

public interface ReservationMapper {
	public int reservation(ReservationVO vo);
	public ArrayList<ReservationVO> select(String id);
	public void check(int reservno);
	public ArrayList<ReservationVO> manage();
}

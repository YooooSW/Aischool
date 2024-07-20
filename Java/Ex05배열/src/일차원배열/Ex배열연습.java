package 일차원배열;

import java.util.Random;
import java.util.Scanner;

public class Ex배열연습 {
	public static void main(String[] args) {

		// 8칸 크기의 배열을 선언하고 랜덤수로 초기화 한 후
		// 가장 큰 수와 작은 수를 각각 출력
		Random rd = new Random();
		int[] arr = new int[9];
		
		System.out.print("배열에 있는 모든 값 : ");
		for(int i=0; i<arr.length; i++) {
			int rannum = rd.nextInt(100)+1;
			arr[i] = rannum;
			System.out.print(arr[i]+ " ");
		}
		
		int max = arr[0];
		int min = arr[0];
		
		for(int i=0; i<arr.length; i++) {
			if(arr[i]>max) {
				max = arr[i];
			}
			if(arr[i]<min) {
				min = arr[i];
			}
		}
		
		System.out.println();
		System.out.println("가장 큰 값 : " + max);
		System.out.println("가장 작은 값 : " + min);
		
		
		
		
		
		
		

	}
}

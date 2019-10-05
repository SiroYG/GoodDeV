package com.dev.cloud.utill;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;

public class Send implements Runnable{
    DataOutputStream out;
    BufferedReader in2 = new BufferedReader(new InputStreamReader(System.in));
    public Send(DataOutputStream out)
    {
        this.out = out;
    }
    public void run()
    {
        while(true)
        {
            
            try
            {
                String msg = in2.readLine();    //키보드로부터 입력을 받음
                out.writeUTF(msg);                //서버로 전송
            }catch(Exception e) {}
        }
    }
}
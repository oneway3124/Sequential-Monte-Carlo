%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ��Ȩ������
%     ���������ϸ����ע����ο�
%     ��Сƽ�����ң�������.�����˲�ԭ����Ӧ��[M].���ӹ�ҵ�����磬2017.4
%     ������ԭ������+����+����+����ע��
%     ����˳����д��������ʾ�޸�
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% �ļ����ƣ�main434.m
% ����˵����ģ���߳���ʵ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function main434
error('����Ĳ���N��ο����е�ֵ���ã�Ȼ��ɾ�����д���')
N=0;
 
SUCCESS=0;
 
Time=zeros(1,N);
for k=1:N
     
    t=0;
    while(1)
      
        number=getChannel();
         
        if(number==1)       
            t=t+3;
            break;           
        else if(number==2)   
                t=t+5;
            else          
                t=t+7;
            end
        end
    end
 
    Time(k)=t;
end
 
TimerAve=mean(Time)
 
Tmax=max(Time)
 
Tmin=min(Time)
 
figure
hold on;box on;
plot(Time);
 
 
line([0,N],[TimerAve,TimerAve],'LineWidth',5,'Color','r');
xlabel('k');
ylabel('ʱ�俪��')
 
function d=getChannel()
 
d=3*rand();
 
d=fix(d)
 
d=d+1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
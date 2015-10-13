
#include "adns.h"  

#include <sys/errno.h>  

#include <sys/socket.h>                     

#include <netinet/in.h>                       

#include <arpa/inet.h>  

 

int test_dns(char *host)    

{  

    adns_state ads;  
    adns_initflags flags;    
    flags = adns_if_nosigpipe  | adns_if_debug | adns_if_logpid;  
printf("[%s]:[%d]\n", __func__, __LINE__);    
    adns_init(&ads, flags, stdout);          
    adns_query quer = NULL;  

    adns_submit(ads, host, (adns_rrtype) adns_r_a, (adns_queryflags) 0, NULL, &quer);  
         
    int tryCount = -1;  
    int adns_cname = 0;  
 
    while(tryCount < 32) {  

        tryCount += 1;  
        adns_answer *ans;  
        int res = adns_check(ads, &quer, &ans, NULL);  
        
        if(res == 0) {        
            if (ans->status == adns_s_prohibitedcname) {  

                char cname[128];  
                strncpy(cname, ans->cname, 127);  
                cname[strlen(ans->cname)] = '\0';        
                adns_query quer = NULL;  
                adns_submit(ads, cname, (adns_rrtype) adns_r_addr, (adns_queryflags) 0, NULL, &quer);        
                adns_cname = 1;  

            } else {  

                //resolve IPv4 address       
                 if(adns_cname)  
                   printf("ip: %s\n", ans->status == adns_s_ok ? inet_ntoa(ans->rrs.addr->addr.inet.sin_addr) : "no");  
                 else  
                   printf("ip: %s\n", ans->status == adns_s_ok ? inet_ntoa(*(ans->rrs.inaddr)) : "no");  

                 adns_finish(ads);  
                 break;  
            }                    
        }         
        else if (res == ESRCH || res == EAGAIN) {  
            sleep(1);  
        } else {  
            printf("host(%s) is err!\n", host);  
        }  
    }    
    return 0;  
}  

 

int main(int argc, char *argv[]) {  

    char host[128] = "www.baidu.com";  
    int i = 1;
    while(i--) {  

        //scanf("%s", host);  
        
        if(strlen(host) == 3 && strcmp(host, "eof")) break;  
          test_dns(host);  

 

   }  

    return 0;  

}                     

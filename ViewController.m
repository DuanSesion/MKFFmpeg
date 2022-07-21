//
//  ViewController.m
//  Demo
//
//  Created by Mark on 2022/7/21.
//

#import "ViewController.h"
#import "FFmOpen.h"


 

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     
    av_register_all();
    avcodec_register_all();
    avformat_network_init();
    AVFormatContext *avFormatContext = avformat_alloc_context();
    NSString *url = @"rtmp://live.hkstv.hk.lxdns.com/live/hks";
    
    if (avformat_open_input(&avFormatContext, [url UTF8String], NULL, NULL) != 0) {
    av_log(NULL, AV_LOG_ERROR, "Couldn't open file");

    }
    
    if (avFormatContext != NULL) {
        if (avformat_find_stream_info(avFormatContext, NULL) < 0) {

        av_log(NULL, AV_LOG_ERROR, "Couldn't find stream information");

        } else {

        av_dump_format(avFormatContext, 0, [url cStringUsingEncoding:NSUTF8StringEncoding], NO);

        }
    }
    

    
}


@end

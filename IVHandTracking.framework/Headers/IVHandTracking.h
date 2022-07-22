//
//  IVHandTracking.h
//  CtrlVideoSDK
//
//  Created by Di Guo on 2020/5/28.
//  Copyright © 2020 guodi. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IVHandTrackingDelegate <NSObject>
//手势识别成功通知
- (void)HandTrackingRecognitionSucceedWithKey:(NSString*)typeKey;

@end


@interface IVHandTracking : NSObject

//记录user对象
@property(nonatomic,strong) NSObject *object;

//是否绘制手势识别的相机画面
@property(nonatomic,assign) BOOL drawCamera;

//相机画面视图 （需要设置属性showCamera:YES，否则默认nil不绘制）
@property(nonatomic,strong,readonly) CAEAGLLayer *cameraLayer;

//识别结果通知
@property(nonatomic,weak) id <IVHandTrackingDelegate> delegate;

//开始手势识别
- (void)start:(NSString*)keys;

//结束手势识别
- (void)stop;

@end

NS_ASSUME_NONNULL_END

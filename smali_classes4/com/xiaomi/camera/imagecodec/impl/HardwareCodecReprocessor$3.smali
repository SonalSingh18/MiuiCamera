.class Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;
.super Ljava/lang/Object;
.source "HardwareCodecReprocessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->initImageReaderAndImageCodec(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$700(Landroid/media/Image;)[B

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageAvailable: received reprocessed image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    array-length v4, v0

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$500(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    .line 7
    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$500(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 8
    invoke-interface {v1, v0, v4, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onJpegAvailable([B[BLjava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpeg return for %s. cost=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    .line 10
    invoke-static {v5}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$500(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v7}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$800(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    .line 12
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v0, v4}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$502(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->access$600(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V

    return-void

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

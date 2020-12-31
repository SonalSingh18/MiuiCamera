.class public final Lcom/android/camera/storage/ImageSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "ImageSaveRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageSaveRequest"


# instance fields
.field private algorithmName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private data:[B

.field private exif:Lcom/android/gallery3d/exif/ExifInterface;

.field private finalImage:Z

.field private info:Lcom/xiaomi/camera/core/PictureInfo;

.field private isHeic:Z

.field private isHide:Z

.field private isMap:Z

.field private isParallelProcess:Z

.field private loc:Landroid/location/Location;

.field private mirror:Z

.field private needThumbnail:Z

.field public oldTitle:Ljava/lang/String;

.field private previewThumbnailHash:I

.field private saverCallback:Lcom/android/camera/storage/SaverCallback;

.field private size:I

.field public title:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/storage/AbstractSaveRequest;->setSaverCallback(Lcom/android/camera/storage/SaverCallback;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/storage/AbstractSaveRequest;->calculateMemoryUsed()I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/ImageSaveRequest;->size:I

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/storage/AbstractSaveRequest;->isHeicSavingRequest()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaveRequest;->isHeic:Z

    return-void
.end method

.method constructor <init>([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    .line 8
    invoke-virtual/range {p0 .. p20}, Lcom/android/camera/storage/ImageSaveRequest;->reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V

    return-void
.end method

.method private trackScenarioAbort()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/statistic/ScenarioTrackUtil;->sShotToGalleryTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sShotToViewTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    iget-object p0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/ImageSaveRequest;->size:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    return p0
.end method

.method public onFinish()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    .line 2
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 4
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method protected reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V
    .locals 4

    move-object v0, p0

    move-object v1, p8

    move-object v2, p1

    .line 1
    iput-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    move v2, p2

    .line 2
    iput-boolean v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->needThumbnail:Z

    move-wide v2, p5

    .line 3
    iput-wide v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->date:J

    move-object v2, p7

    .line 4
    iput-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    move-object v2, p3

    .line 5
    iput-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    move-object v2, p4

    .line 6
    iput-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->loc:Landroid/location/Location;

    move v1, p9

    .line 8
    iput v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    move v1, p10

    .line 9
    iput v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    move/from16 v1, p12

    .line 11
    iput v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    move/from16 v1, p13

    .line 12
    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    move/from16 v1, p14

    .line 13
    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    move/from16 v1, p15

    .line 14
    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    move/from16 v1, p16

    .line 15
    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    move/from16 v1, p17

    .line 16
    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->algorithmName:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    move/from16 v1, p20

    .line 19
    iput v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    .line 2
    iget-object v15, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    const/4 v13, 0x0

    if-eqz v15, :cond_0

    .line 3
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->isHeic:Z

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/camera/storage/ImageSaveRequest;->loc:Landroid/location/Location;

    iget v8, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    iget v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    iget v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    iget-object v11, v0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    iget-boolean v12, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    iget-boolean v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    iget-object v14, v0, Lcom/android/camera/storage/ImageSaveRequest;->algorithmName:Ljava/lang/String;

    move-object/from16 v17, v14

    iget-object v14, v0, Lcom/android/camera/storage/ImageSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    move/from16 v18, v5

    move-object v5, v15

    move/from16 v13, v18

    move-object/from16 v16, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-static/range {v1 .. v15}, Lcom/android/camera/storage/Storage;->updateImageWithExtraExif(Landroid/content/Context;[BZLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;ZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v15

    if-eqz v15, :cond_2

    goto :goto_1

    :cond_0
    move-object/from16 v17, v15

    .line 4
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->algorithmName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "mimoji"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 6
    :goto_0
    iget-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/camera/storage/AbstractSaveRequest;->date:J

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaveRequest;->loc:Landroid/location/Location;

    iget v7, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    iget-object v8, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    iget-boolean v9, v0, Lcom/android/camera/storage/ImageSaveRequest;->isHeic:Z

    iget v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    iget v11, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    const/4 v12, 0x0

    iget-boolean v13, v0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    iget-boolean v14, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    iget-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->algorithmName:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    move-object/from16 v18, v1

    invoke-static/range {v2 .. v18}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    move-object/from16 v15, v17

    .line 7
    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    .line 8
    iget-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->needThumbnail:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaveRequest;->isFinal()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    .line 9
    :goto_2
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    const-string v2, "ImageSaveRequest"

    if-eqz v1, :cond_8

    if-eqz v14, :cond_6

    .line 10
    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    int-to-double v3, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4080000000000000L    # 512.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const-string v3, "image save try to create thumbnail"

    .line 12
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    if-eqz v3, :cond_4

    .line 14
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->context:Landroid/content/Context;

    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    invoke-static {v1, v15, v3}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    goto :goto_3

    .line 15
    :cond_4
    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    iget v4, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    iget-boolean v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    invoke-static {v3, v4, v1, v15, v5}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_5

    .line 16
    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_4

    .line 17
    :cond_5
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_4

    .line 18
    :cond_6
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    invoke-interface {v1, v3, v15}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    .line 19
    :goto_4
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v1, v15, v3, v4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 20
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    .line 21
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToGalleryEnd(ZJ)V

    .line 22
    iget-object v0, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToViewEnd(ZJ)V

    :cond_7
    const-string v0, "image save finished"

    .line 23
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 24
    :cond_8
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 25
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v1, v3, v0, v2}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_5

    :cond_9
    const-string v1, "image save failed"

    .line 26
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_a

    .line 27
    iget-object v0, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_5

    .line 28
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaveRequest;->trackScenarioAbort()V

    const-string v1, "set mWaitingForUri is false"

    .line 29
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v0, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    invoke-interface {v1, v0, v3}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    :goto_5
    return-void
.end method

.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaveRequest;->context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method

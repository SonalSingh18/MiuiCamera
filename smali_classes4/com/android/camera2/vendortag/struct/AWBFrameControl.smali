.class public Lcom/android/camera2/vendortag/struct/AWBFrameControl;
.super Ljava/lang/Object;
.source "AWBFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl;
    }
.end annotation


# instance fields
.field mBGain:F

.field mColorTemperature:I

.field mGGain:F

.field mRGain:F


# direct methods
.method public constructor <init>(FFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mRGain:F

    .line 3
    iput p2, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mGGain:F

    .line 4
    iput p3, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mBGain:F

    .line 5
    iput p4, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mColorTemperature:I

    return-void
.end method


# virtual methods
.method public getColorTemperature()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mColorTemperature:I

    return p0
.end method

.class Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;
.super Landroid/view/animation/LinearInterpolator;
.source "CameraSnapAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

.field final synthetic val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iput-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;->val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v1, p1, v0

    .line 1
    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;->val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    iget v2, v2, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v3, 0xae

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb7

    if-ne v2, v3, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$600(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    long-to-double v1, v1

    mul-double/2addr v1, v3

    .line 3
    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$700(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    double-to-long v1, v1

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$800(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, v0

    .line 4
    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;->val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    iget v2, v2, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v1, v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$400(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    iput v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    .line 6
    invoke-super {p0, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.class Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/GLCanvasState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanvasStateConfig"
.end annotation


# instance fields
.field mAlpha:F

.field mBlendAlpha:F

.field mModelMatrix:[F

.field mTexMatrix:[F

.field final synthetic this$0:Lcom/android/camera/effect/GLCanvasState;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/GLCanvasState;[F[FFF)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->this$0:Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 2
    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    new-array v1, p1, [F

    .line 3
    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    iput v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    const/4 v1, 0x0

    .line 6
    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p2, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    invoke-static {p3, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput p4, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    .line 9
    iput p5, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    return p0
.end method

.method public getBlendAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return p0
.end method

.method public getModelMatrix()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    return-object p0
.end method

.method public getTexMatrix()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    return-object p0
.end method

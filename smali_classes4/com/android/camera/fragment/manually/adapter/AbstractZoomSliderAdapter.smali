.class public abstract Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.super Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;
.source "AbstractZoomSliderAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;


# instance fields
.field protected mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;-><init>()V

    return-void
.end method

.method protected static getRealZoomRatioTele()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->y:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method


# virtual methods
.method public abstract isEnable()Z
.end method

.method public abstract mapPositionToZoomRatio(F)F
.end method

.method public abstract mapZoomRatioToPosition(F)F
.end method

.method public abstract setEnable(Z)V
.end method

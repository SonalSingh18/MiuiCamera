.class Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;
.super Ljava/lang/Object;
.source "FragmentDualCameraBokehAdjust.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldIndex:I

.field final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;->oldIndex:I

    return-void
.end method


# virtual methods
.method public onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;->oldIndex:I

    if-eq v0, p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;

    invoke-static {v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->access$300(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->access$400(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performBokehAdjust()V

    .line 4
    :cond_0
    iput p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;->oldIndex:I

    return-void
.end method

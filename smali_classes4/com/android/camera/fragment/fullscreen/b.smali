.class public final synthetic Lcom/android/camera/fragment/fullscreen/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/b;->a:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/b;->a:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-virtual {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->g()V

    return-void
.end method

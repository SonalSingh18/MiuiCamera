.class public Lcom/android/camera/videoplayer/player_messages/Stop;
.super Lcom/android/camera/videoplayer/player_messages/PlayerMessage;
.source "Stop.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    return-void
.end method


# virtual methods
.method protected performAction(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->stop()V

    return-void
.end method

.method protected stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPED:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

.method protected stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPING:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

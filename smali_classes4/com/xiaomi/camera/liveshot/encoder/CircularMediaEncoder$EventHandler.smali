.class public Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;
.super Landroid/os/Handler;
.source "CircularMediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;->this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;->this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doRelease()V

    .line 4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 5
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;->this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doStop()V

    .line 9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 10
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;->this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doStart()V

    .line 14
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 15
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 16
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

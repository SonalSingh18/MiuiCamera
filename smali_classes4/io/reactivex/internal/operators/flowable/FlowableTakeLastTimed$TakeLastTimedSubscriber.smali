.class final Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableTakeLastTimed.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastTimedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4eca0434695949bbL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final count:J

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field s:Lorg/reactivestreams/Subscription;

.field final scheduler:Lio/reactivex/Scheduler;

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 4
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->count:J

    .line 5
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->time:J

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->scheduler:Lio/reactivex/Scheduler;

    .line 8
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {p1, p8}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 9
    iput-boolean p9, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->delayError:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->cancelled:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    :cond_0
    return-void
.end method

.method checkTerminated(ZLorg/reactivestreams/Subscriber;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return v1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p1, :cond_4

    .line 3
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->error:Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p2, p0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_0
    return v1

    .line 6
    :cond_2
    iget-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->error:Ljava/lang/Throwable;

    if-eqz p3, :cond_3

    .line 7
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 8
    invoke-interface {p2, p3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method drain()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 4
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->delayError:Z

    const/4 v3, 0x1

    move v4, v3

    .line 5
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->done:Z

    if-eqz v5, :cond_6

    .line 6
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v5

    .line 7
    invoke-virtual {p0, v5, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->checkTerminated(ZLorg/reactivestreams/Subscriber;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    .line 9
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    move v11, v3

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .line 10
    :goto_1
    invoke-virtual {p0, v11, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->checkTerminated(ZLorg/reactivestreams/Subscriber;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    return-void

    :cond_4
    cmp-long v11, v5, v9

    if-nez v11, :cond_5

    cmp-long v5, v9, v7

    if-eqz v5, :cond_6

    .line 11
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v5, v9, v10}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    .line 13
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 14
    invoke-interface {v0, v11}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    :cond_6
    :goto_2
    neg-int v4, v4

    .line 15
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->trim(JLio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->delayError:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->trim(JLio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->done:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->trim(JLio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->drain()V

    :cond_0
    return-void
.end method

.method trim(JLio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->time:J

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber;->count:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p0, v2, v4

    const/4 v4, 0x1

    if-nez p0, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4
    invoke-virtual {p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, p1, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    if-nez p0, :cond_2

    .line 5
    invoke-virtual {p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->size()I

    move-result v5

    shr-int/2addr v5, v4

    int-to-long v5, v5

    cmp-long v5, v5, v2

    if-lez v5, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    .line 7
    invoke-virtual {p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.class final Lcom/android/camera/network/download/ConnectionHelper$Holder;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/download/ConnectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final reason:I

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->value:Ljava/lang/Object;

    .line 6
    iput p1, p0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->reason:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/network/download/ConnectionHelper$Holder;->reason:I

    return-void
.end method

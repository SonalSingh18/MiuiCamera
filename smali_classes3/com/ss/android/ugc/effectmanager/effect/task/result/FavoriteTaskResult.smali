.class public Lcom/ss/android/ugc/effectmanager/effect/task/result/FavoriteTaskResult;
.super Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;
.source "FavoriteTaskResult.java"


# instance fields
.field private mEffectIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mException:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

.field private mIsSuccess:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FavoriteTaskResult;->mEffectIds:Ljava/util/List;

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FavoriteTaskResult;->mIsSuccess:Z

    .line 4
    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FavoriteTaskResult;->mEffectIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FavoriteTaskResult;->mEffectIds:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FavoriteTaskResult;->mException:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method


# virtual methods
.method public getEffectIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FavoriteTaskResult;->mEffectIds:Ljava/util/List;

    return-object p0
.end method

.method public getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FavoriteTaskResult;->mException:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FavoriteTaskResult;->mIsSuccess:Z

    return p0
.end method

.class Lcom/ss/android/ugc/effectmanager/EffectManager$5;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/EffectManager;->fetchEffectList(Ljava/util/List;ZLjava/util/Map;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

.field final synthetic val$downloadAfterFetch:Z

.field final synthetic val$iFetchEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectManager;ZLcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$5;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iput-boolean p2, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$5;->val$downloadAfterFetch:Z

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$5;->val$iFetchEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$5;->val$iFetchEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;->onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$5;->val$downloadAfterFetch:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$5;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$5;->val$iFetchEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;

    invoke-static {v0, p1, p0}, Lcom/ss/android/ugc/effectmanager/EffectManager;->access$200(Lcom/ss/android/ugc/effectmanager/EffectManager;Ljava/util/List;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$5;->val$iFetchEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;->onSuccess(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.class public final Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LensServiceClientEventData.java"

# interfaces
.implements Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;",
        "Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;",
        ">;",
        "Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->access$000()Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTargetServiceApiVersion()Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->access$200(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;)V

    return-object p0
.end method

.method public getTargetServiceApiVersion()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->getTargetServiceApiVersion()I

    move-result p0

    return p0
.end method

.method public hasTargetServiceApiVersion()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->hasTargetServiceApiVersion()Z

    move-result p0

    return p0
.end method

.method public setTargetServiceApiVersion(I)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->access$100(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;I)V

    return-object p0
.end method

.class Lcom/ss/android/ttve/monitor/GPUModelDetector$2;
.super Ljava/lang/Thread;
.source "GPUModelDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/monitor/GPUModelDetector;->detectGPUSurpportHighResolutionRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/monitor/GPUModelDetector;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/monitor/GPUModelDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/ttve/monitor/GPUModelDetector$2;->this$0:Lcom/ss/android/ttve/monitor/GPUModelDetector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEGPUInfoReader;->nativeGetGPURenderer()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpurender is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPUModelDetector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v3, p0, Lcom/ss/android/ttve/monitor/GPUModelDetector$2;->this$0:Lcom/ss/android/ttve/monitor/GPUModelDetector;

    invoke-static {v3, v0}, Lcom/ss/android/ttve/monitor/GPUModelDetector;->access$000(Lcom/ss/android/ttve/monitor/GPUModelDetector;Ljava/lang/String;)Lcom/ss/android/ttve/monitor/GPUModelDetector$GPUModelInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/ttve/monitor/GPUModelDetector$GPUModelInfo;->getGPUModel()Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuModel;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Lcom/ss/android/ttve/monitor/GPUModelDetector$GPUModelInfo;->getGPUSubModel()Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    move-result-object v4

    .line 6
    invoke-virtual {v0}, Lcom/ss/android/ttve/monitor/GPUModelDetector$GPUModelInfo;->getGPUModelNumber()I

    move-result v0

    .line 7
    sget-object v5, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuModel;->Vivante:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuModel;

    if-ne v3, v5, :cond_0

    .line 8
    sget-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    if-ne v4, v0, :cond_4

    goto :goto_0

    .line 9
    :cond_0
    sget-object v5, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuModel;->Adreno:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuModel;

    if-ne v3, v5, :cond_1

    .line 10
    sget-object v3, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    if-ne v4, v3, :cond_4

    const/16 v3, 0x134

    if-gt v0, v3, :cond_4

    goto :goto_0

    .line 11
    :cond_1
    sget-object v5, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuModel;->Mali:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuModel;

    if-ne v3, v5, :cond_3

    .line 12
    sget-object v3, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    if-ne v4, v3, :cond_2

    const/16 v3, 0x12c

    if-gt v0, v3, :cond_4

    goto :goto_0

    .line 13
    :cond_2
    sget-object v3, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    if-ne v4, v3, :cond_4

    const/16 v3, 0x1c2

    if-gt v0, v3, :cond_4

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuModel;->PowerVR:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuModel;

    if-ne v3, v0, :cond_4

    .line 15
    sget-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Marlowe:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    if-eq v4, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/ss/android/ttve/monitor/GPUModelDetector$2;->this$0:Lcom/ss/android/ttve/monitor/GPUModelDetector;

    invoke-static {v0, v1}, Lcom/ss/android/ttve/monitor/GPUModelDetector;->access$202(Lcom/ss/android/ttve/monitor/GPUModelDetector;Z)Z

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSurpportHighResolutionSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttve/monitor/GPUModelDetector$2;->this$0:Lcom/ss/android/ttve/monitor/GPUModelDetector;

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/GPUModelDetector;->access$200(Lcom/ss/android/ttve/monitor/GPUModelDetector;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

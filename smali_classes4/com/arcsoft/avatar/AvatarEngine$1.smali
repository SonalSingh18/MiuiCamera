.class Lcom/arcsoft/avatar/AvatarEngine$1;
.super Ljava/lang/Object;
.source "AvatarEngine.java"

# interfaces
.implements Lcom/arcsoft/avatar/AvatarConfig$GetSupportConfigTypeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/avatar/AvatarEngine;->getSupportConfigType(I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/arcsoft/avatar/AvatarEngine;


# direct methods
.method constructor <init>(Lcom/arcsoft/avatar/AvatarEngine;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar/AvatarEngine$1;->b:Lcom/arcsoft/avatar/AvatarEngine;

    iput-object p2, p0, Lcom/arcsoft/avatar/AvatarEngine$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSupportConfigType(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;

    invoke-direct {v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;-><init>()V

    .line 2
    iput p2, v0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configType:I

    .line 3
    iput-object p1, v0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configTypeDesc:Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lcom/arcsoft/avatar/AvatarEngine$1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.class public final enum Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;
.super Ljava/lang/Enum;
.source "VEEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCALE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

.field public static final enum SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

.field public static final enum SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

.field public static final enum SCALE_MODE_CENTER_INSIDE_WITH_2DENGINE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const/4 v1, 0x0

    const-string v2, "SCALE_MODE_CENTER_INSIDE"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    .line 2
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const/4 v2, 0x1

    const-string v3, "SCALE_MODE_CENTER_CROP"

    invoke-direct {v0, v3, v2}, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    .line 3
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const/4 v3, 0x2

    const-string v4, "SCALE_MODE_CENTER_INSIDE_WITH_2DENGINE"

    invoke-direct {v0, v4, v3}, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_INSIDE_WITH_2DENGINE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    .line 4
    sget-object v4, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_INSIDE_WITH_2DENGINE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    return-object v0
.end method

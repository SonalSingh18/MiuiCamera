.class public final enum Lcom/ss/android/vesdk/VEGestureType;
.super Ljava/lang/Enum;
.source "VEGestureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEGestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum LongPress:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Pan:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Rotate:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Scale:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Tap:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Unknown:Lcom/ss/android/vesdk/VEGestureType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/ss/android/vesdk/VEGestureType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGestureType;->Unknown:Lcom/ss/android/vesdk/VEGestureType;

    .line 2
    new-instance v0, Lcom/ss/android/vesdk/VEGestureType;

    const-string v1, "Tap"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGestureType;->Tap:Lcom/ss/android/vesdk/VEGestureType;

    .line 3
    new-instance v0, Lcom/ss/android/vesdk/VEGestureType;

    const-string v1, "Pan"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGestureType;->Pan:Lcom/ss/android/vesdk/VEGestureType;

    .line 4
    new-instance v0, Lcom/ss/android/vesdk/VEGestureType;

    const-string v1, "Rotate"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGestureType;->Rotate:Lcom/ss/android/vesdk/VEGestureType;

    .line 5
    new-instance v0, Lcom/ss/android/vesdk/VEGestureType;

    const-string v1, "Scale"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGestureType;->Scale:Lcom/ss/android/vesdk/VEGestureType;

    .line 6
    new-instance v0, Lcom/ss/android/vesdk/VEGestureType;

    const-string v1, "LongPress"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGestureType;->LongPress:Lcom/ss/android/vesdk/VEGestureType;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/ss/android/vesdk/VEGestureType;

    .line 7
    sget-object v8, Lcom/ss/android/vesdk/VEGestureType;->Unknown:Lcom/ss/android/vesdk/VEGestureType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/ss/android/vesdk/VEGestureType;->Tap:Lcom/ss/android/vesdk/VEGestureType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/vesdk/VEGestureType;->Pan:Lcom/ss/android/vesdk/VEGestureType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ss/android/vesdk/VEGestureType;->Rotate:Lcom/ss/android/vesdk/VEGestureType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ss/android/vesdk/VEGestureType;->Scale:Lcom/ss/android/vesdk/VEGestureType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/ss/android/vesdk/VEGestureType;->$VALUES:[Lcom/ss/android/vesdk/VEGestureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGestureType;
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/vesdk/VEGestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEGestureType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEGestureType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/vesdk/VEGestureType;->$VALUES:[Lcom/ss/android/vesdk/VEGestureType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEGestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEGestureType;

    return-object v0
.end method

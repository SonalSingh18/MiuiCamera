.class public final enum Lcom/ss/android/vesdk/VEEditor$VEState;
.super Ljava/lang/Enum;
.source "VEEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$VEState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum ANY:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum COMPLETED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum ERROR:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum INITIALIZED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum NOTHING:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum PREPARED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum STOPPED:Lcom/ss/android/vesdk/VEEditor$VEState;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "ANY"

    const/4 v2, 0x0

    const v3, 0xffff

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->ANY:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 2
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->ERROR:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 3
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "NOTHING"

    const/4 v4, 0x2

    const/high16 v5, 0x100000

    invoke-direct {v0, v1, v4, v5}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->NOTHING:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 4
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "IDLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 5
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "INITIALIZED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v4}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->INITIALIZED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 6
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "PREPARED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->PREPARED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 7
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "STARTED"

    const/4 v8, 0x6

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 8
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "PAUSED"

    const/4 v10, 0x7

    const/16 v11, 0x10

    invoke-direct {v0, v1, v10, v11}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 9
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "SEEKING"

    const/16 v11, 0x20

    invoke-direct {v0, v1, v9, v11}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 10
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "STOPPED"

    const/16 v11, 0x9

    const/16 v12, 0x40

    invoke-direct {v0, v1, v11, v12}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->STOPPED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 11
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v1, "COMPLETED"

    const/16 v12, 0xa

    const/16 v13, 0x80

    invoke-direct {v0, v1, v12, v13}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->COMPLETED:Lcom/ss/android/vesdk/VEEditor$VEState;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 12
    sget-object v13, Lcom/ss/android/vesdk/VEEditor$VEState;->ANY:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v13, v1, v2

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->ERROR:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->NOTHING:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->INITIALIZED:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->PREPARED:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v2, v1, v10

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v2, v1, v9

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->STOPPED:Lcom/ss/android/vesdk/VEEditor$VEState;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VEState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ss/android/vesdk/VEEditor$VEState;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/ss/android/vesdk/VEEditor$VEState;
    .locals 1

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x4

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x10

    if-eq p0, v0, :cond_5

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const v0, 0xffff

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x100000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->NOTHING:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->ANY:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->COMPLETED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->STOPPED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 7
    :cond_5
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 8
    :cond_6
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 9
    :cond_7
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->PREPARED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 10
    :cond_8
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->INITIALIZED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 11
    :cond_9
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 12
    :cond_a
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->ERROR:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$VEState;
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$VEState;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$VEState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor$VEState;->mValue:I

    return p0
.end method

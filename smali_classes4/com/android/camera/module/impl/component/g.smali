.class public final synthetic Lcom/android/camera/module/impl/component/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/g;->a:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/g;->a:[I

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-static {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->t([ILcom/android/camera/module/BaseModule;)V

    return-void
.end method

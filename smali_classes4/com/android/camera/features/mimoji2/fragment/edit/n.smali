.class public final synthetic Lcom/android/camera/features/mimoji2/fragment/edit/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:[Z


# direct methods
.method public synthetic constructor <init>([Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/n;->a:[Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/n;->a:[Z

    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;->j([ZLandroid/content/DialogInterface;IZ)V

    return-void
.end method

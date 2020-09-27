.class public Lcom/bumptech/glide/load/resource/gif/b;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$a;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/b$a;
    }
.end annotation


# static fields
.field private static final GRAVITY:I = 0x77

.field public static final Yf:I = -0x1

.field public static final Zf:I


# instance fields
.field private Rf:Z

.field private Sf:Z

.field private Tf:Z

.field private Uf:I

.field private Vf:I

.field private Wf:Z

.field private Xf:Landroid/graphics/Rect;

.field private isRunning:Z

.field private paint:Landroid/graphics/Paint;

.field private final state:Lcom/bumptech/glide/load/resource/gif/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/j;IILandroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/gif/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/j;IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/j;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/b$a;

    new-instance v8, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lcom/bumptech/glide/load/resource/gif/b$a;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/b;-><init>(Lcom/bumptech/glide/load/resource/gif/b$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Landroid/graphics/Paint;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 9
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/b$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/gif/b$a;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/b;-><init>(Lcom/bumptech/glide/load/resource/gif/b$a;)V

    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/b;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/b$a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Tf:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Vf:I

    .line 8
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/b$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    return-void
.end method

.method private Hm()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    .line 2
    :goto_0
    instance-of v0, p0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private Im()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Xf:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Xf:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Xf:Landroid/graphics/Rect;

    return-object p0
.end method

.method private Jm()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Uf:I

    return-void
.end method

.method private Km()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Sf:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/i;->b(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getFrameCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->isRunning:Z

    if-nez v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->isRunning:Z

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$a;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private Lm()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->isRunning:Z

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$a;)V

    return-void
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->paint:Landroid/graphics/Paint;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->paint:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public Aa()Lcom/bumptech/glide/load/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Aa()Lcom/bumptech/glide/load/j;

    move-result-object p0

    return-object p0
.end method

.method public Ba()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->isRunning:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "You cannot restart a currently running animation."

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->b(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Kj()V

    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->start()V

    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->Hm()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->stop()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->za()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getFrameCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 6
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Uf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Uf:I

    .line 7
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Vf:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->Uf:I

    if-lt v1, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->stop()V

    :cond_2
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a(Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Sf:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Wf:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->Im()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Wf:Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Jj()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->Im()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    return-object p0
.end method

.method public getFrameCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getFrameCount()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public getSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getSize()I

    move-result p0

    return p0
.end method

.method isRecycled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Sf:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->isRunning:Z

    return p0
.end method

.method n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->isRunning:Z

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->Wf:Z

    return-void
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Sf:Z

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setLoopCount(I)V
    .locals 1

    const/4 v0, -0x1

    if-gtz p1, :cond_1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getLoopCount()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v0

    .line 3
    :cond_2
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->Vf:I

    goto :goto_1

    .line 4
    :cond_3
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->Vf:I

    :goto_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Sf:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->b(ZLjava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->Tf:Z

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->Lm()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Rf:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->Km()V

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Rf:Z

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->Jm()V

    .line 3
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Tf:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->Km()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->Rf:Z

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->Lm()V

    return-void
.end method

.method public ya()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->ya()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public za()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->state:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentIndex()I

    move-result p0

    return p0
.end method

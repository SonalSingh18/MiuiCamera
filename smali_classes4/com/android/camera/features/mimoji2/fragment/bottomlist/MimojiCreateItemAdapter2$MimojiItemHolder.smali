.class Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2$MimojiItemHolder;
.super Lcom/android/camera/fragment/CommonRecyclerViewHolder;
.source "MimojiCreateItemAdapter2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimojiItemHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2$MimojiItemHolder;->this$0:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2$MimojiItemHolder;->this$0:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    invoke-static {v1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->access$000(Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2$MimojiItemHolder;->this$0:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    invoke-static {v2}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->access$100(Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;)Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2$MimojiItemHolder;->this$0:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;->access$100(Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2;)Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2$OnItemClickListener;

    move-result-object p0

    invoke-interface {p0, v1, v0, p1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiCreateItemAdapter2$OnItemClickListener;->onItemClick(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;ILandroid/view/View;)V

    :cond_0
    return-void
.end method

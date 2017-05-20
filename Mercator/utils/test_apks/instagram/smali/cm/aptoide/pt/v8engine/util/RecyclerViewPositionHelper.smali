.class public Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;
.super Ljava/lang/Object;
.source "RecyclerViewPositionHelper.java"


# instance fields
.field final layoutManager:Landroid/support/v7/widget/RecyclerView$h;

.field final recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 14
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    .line 15
    return-void
.end method

.method public static createHelper(Landroid/support/v7/widget/RecyclerView;)Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;
    .locals 2

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Recycler View is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method


# virtual methods
.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1, v2}, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 109
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 110
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 97
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 98
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {v0}, Landroid/support/v7/widget/at;->b(Landroid/support/v7/widget/RecyclerView$h;)Landroid/support/v7/widget/at;

    move-result-object v0

    .line 54
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/at;->c()I

    move-result v4

    .line 55
    invoke-virtual {v0}, Landroid/support/v7/widget/at;->d()I

    move-result v5

    .line 56
    if-le p2, p1, :cond_2

    const/4 v1, 0x1

    .line 57
    :goto_1
    const/4 v3, 0x0

    .line 58
    :goto_2
    if-eq p1, p2, :cond_4

    .line 59
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$h;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->a(Landroid/view/View;)I

    move-result v6

    .line 61
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->b(Landroid/view/View;)I

    move-result v7

    .line 62
    if-ge v6, v5, :cond_5

    if-le v7, v4, :cond_5

    .line 63
    if-eqz p3, :cond_0

    .line 64
    if-lt v6, v4, :cond_3

    if-gt v7, v5, :cond_3

    .line 74
    :cond_0
    :goto_3
    return-object v2

    .line 51
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {v0}, Landroid/support/v7/widget/at;->a(Landroid/support/v7/widget/RecyclerView$h;)Landroid/support/v7/widget/at;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 66
    :cond_3
    if-eqz p4, :cond_5

    if-nez v3, :cond_5

    .line 58
    :goto_4
    add-int/2addr p1, v1

    move-object v3, v2

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 74
    goto :goto_3

    :cond_5
    move-object v2, v3

    goto :goto_4
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->layoutManager:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

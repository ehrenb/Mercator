.class public Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "ScreenshotsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final screenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;",
            ">;"
        }
    .end annotation
.end field

.field private final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/model/v7/GetAppMeta$Media;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getVideos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->videos:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getScreenshots()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->screenshots:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->screenshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->imageUris:Ljava/util/ArrayList;

    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->screenshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;

    .line 39
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->imageUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->videos:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->screenshots:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->screenshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->onBindViewHolder(Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;I)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->videos:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Video;

    .line 55
    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->bindViews(Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Video;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->screenshots:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->screenshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->screenshots:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;

    .line 59
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->videos:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 60
    :goto_1
    sub-int v1, p2, v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->imageUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v2}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->bindViews(Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->row_item_screenshots_gallery:I

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    new-instance v1, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

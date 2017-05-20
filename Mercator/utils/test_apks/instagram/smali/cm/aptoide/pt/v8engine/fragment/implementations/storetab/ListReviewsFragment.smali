.class public Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListReviewsFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;
.source "ListReviewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment",
        "<",
        "Lcm/aptoide/pt/model/v7/ListFullReviews;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildAction()Lrx/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b/b",
            "<",
            "Lcm/aptoide/pt/model/v7/ListFullReviews;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListReviewsFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListReviewsFragment;)Lrx/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected buildRequest(ZLjava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/V7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<",
            "Lcm/aptoide/pt/model/v7/ListFullReviews;",
            "+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListReviewsFragment;->requestFactory:Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;

    invoke-virtual {v0, p2, p1}, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->newListFullReviews(Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$buildAction$0(Lcm/aptoide/pt/model/v7/ListFullReviews;)V
    .locals 5

    .prologue
    .line 27
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListFullReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListFullReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListFullReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 33
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/FullReview;

    .line 34
    new-instance v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;

    invoke-direct {v4, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;-><init>(Lcm/aptoide/pt/model/v7/FullReview;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v0, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListReviewsFragment;->addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 38
    :cond_1
    return-void
.end method

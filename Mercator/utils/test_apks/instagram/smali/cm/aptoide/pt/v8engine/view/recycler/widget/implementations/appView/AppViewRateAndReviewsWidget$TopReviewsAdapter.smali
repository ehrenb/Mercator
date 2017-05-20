.class final Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "AppViewRateAndReviewsWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TopReviewsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final reviews:[Lcm/aptoide/pt/model/v7/Review;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;-><init>([Lcm/aptoide/pt/model/v7/Review;)V

    .line 236
    return-void
.end method

.method public constructor <init>([Lcm/aptoide/pt/model/v7/Review;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 239
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;->reviews:[Lcm/aptoide/pt/model/v7/Review;

    .line 240
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;->reviews:[Lcm/aptoide/pt/model/v7/Review;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;->reviews:[Lcm/aptoide/pt/model/v7/Review;

    array-length v0, v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 229
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;->onBindViewHolder(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;I)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;->reviews:[Lcm/aptoide/pt/model/v7/Review;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->setup(Lcm/aptoide/pt/model/v7/Review;)V

    .line 250
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 244
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;

    .line 245
    # getter for: Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->LAYOUT_ID:I
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->access$000()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;-><init>(Landroid/view/View;Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$1;)V

    return-object v1
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 0

    .prologue
    .line 229
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;->onViewRecycled(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;)V
    .locals 0

    .prologue
    .line 257
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->cancelImageLoad()V

    .line 258
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$v;)V

    .line 259
    return-void
.end method

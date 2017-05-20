.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "RowReviewWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field private avatar:Landroid/widget/ImageView;

.field public rating:Landroid/widget/TextView;

.field private reviewBody:Landroid/widget/TextView;

.field private reviewer:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 30
    return-void
.end method

.method static synthetic lambda$bindView$0(Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/FullReview;Ljava/lang/Void;)V
    .locals 8

    .prologue
    .line 66
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/FullReview;->getId()J

    move-result-wide v6

    .line 67
    invoke-interface/range {v0 .. v7}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newRateAndReviewsFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 66
    invoke-interface {p0, v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 33
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->appIcon:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->rating:Landroid/widget/TextView;

    .line 35
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->appName:Landroid/widget/TextView;

    .line 36
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->avatar:Landroid/widget/ImageView;

    .line 37
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->reviewer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->reviewer:Landroid/widget/TextView;

    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->reviewBody:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;)V
    .locals 11

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/FullReview;

    .line 45
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/FullReview;->getData()Lcm/aptoide/pt/model/v7/FullReview$AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/FullReview$AppData;->getApp()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v3

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 55
    :goto_0
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->reviewBody:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/FullReview;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->reviewer:Landroid/widget/TextView;

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->reviewed_by:I

    new-array v5, v7, [Ljava/lang/Object;

    .line 57
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/FullReview;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/Review$User;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->rating:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/FullReview;->getStats()Lcm/aptoide/pt/model/v7/Review$Stats;

    move-result-object v7

    invoke-virtual {v7}, Lcm/aptoide/pt/model/v7/Review$Stats;->getRating()F

    move-result v7

    float-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/FullReview;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Review$User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->avatar:Landroid/widget/ImageView;

    sget v5, Lcm/aptoide/pt/v8engine/R$drawable;->layer_1:I

    invoke-virtual {v1, v3, v4, v5}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithCircleTransformAndPlaceHolderAvatarSize(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    .line 64
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v1

    .line 65
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->compositeSubscription:Lrx/j/b;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->itemView:Landroid/view/View;

    invoke-static {v4}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v4

    invoke-static {v1, v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/FullReview;)Lrx/b/b;

    move-result-object v0

    invoke-virtual {v4, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v3, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 70
    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

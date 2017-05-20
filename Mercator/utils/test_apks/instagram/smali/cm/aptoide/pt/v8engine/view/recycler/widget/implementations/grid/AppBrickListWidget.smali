.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppBrickListWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private graphic:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private ratingBar:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->name:Landroid/widget/TextView;

    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->featured_graphic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->graphic:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->ratingbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->ratingBar:Landroid/widget/RatingBar;

    .line 40
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;)V
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getGraphic()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$drawable;->placeholder_705x345:I

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->graphic:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 46
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getRating()Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getAvg()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 48
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 49
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->compositeSubscription:Lrx/j/b;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->itemView:Landroid/view/View;

    invoke-static {v3}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v3

    invoke-static {p0, p1, v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/model/v7/listapp/App;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 56
    return-void
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->addStepToList(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-virtual {p3}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v2

    invoke-virtual {p3}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 51
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 53
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;->getAdapterPosition()I

    move-result v0

    .line 54
    invoke-virtual {p3}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 53
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics$HomePageEditorsChoice;->clickOnEditorsChoiceItem(ILjava/lang/String;Z)V

    .line 55
    return-void
.end method

.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppBrickWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private graphic:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 35
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->featured_graphic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;->graphic:Landroid/widget/ImageView;

    .line 36
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;)V
    .locals 5

    .prologue
    .line 39
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    .line 41
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getGraphic()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcm/aptoide/pt/v8engine/R$drawable;->placeholder_705x345:I

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;->graphic:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-object v0, v1

    .line 43
    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 44
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 52
    return-void
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->addStepToList(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v2

    .line 48
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-interface {v1, v2, v3, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 46
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 49
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;->getAdapterPosition()I

    move-result v1

    .line 50
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 49
    invoke-static {v1, v0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics$HomePageEditorsChoice;->clickOnEditorsChoiceItem(ILjava/lang/String;Z)V

    .line 51
    return-void
.end method

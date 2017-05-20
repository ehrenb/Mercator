.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "GridAppWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;


# instance fields
.field private downloads:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private ratingBar:Landroid/widget/RatingBar;

.field private tvAddedTime:Landroid/widget/TextView;

.field private tvStoreName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getInstance()Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->name:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->icon:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->downloads:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->downloads:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->ratingbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->ratingBar:Landroid/widget/RatingBar;

    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->store_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->tvStoreName:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->added_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->tvAddedTime:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;)V
    .locals 10

    .prologue
    .line 53
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 54
    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v4

    .line 55
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v3

    .line 57
    invoke-static {v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 59
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;->isTotalDownloads()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/listapp/App;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getPdownloads()I

    move-result v0

    .line 62
    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->name:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->downloads:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v8, v0

    .line 64
    invoke-static {v8, v9}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->_downloads:I

    invoke-virtual {v3, v2}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/listapp/App;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getRating()Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getAvg()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->tvStoreName:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->tvAddedTime:Landroid/widget/TextView;

    sget-object v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/listapp/App;->getAdded()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1, v3, v8, v9}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    check-cast v3, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->itemView:Landroid/view/View;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;JLcm/aptoide/pt/model/v7/listapp/App;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 76
    return-void

    .line 60
    :cond_0
    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/listapp/App;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getDownloads()I

    move-result v0

    goto :goto_0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;JLcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/Void;)V
    .locals 7

    .prologue
    .line 71
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->addStepToList(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    .line 73
    invoke-virtual {p5}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {p5}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->tvStoreName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-wide v2, p3

    .line 73
    invoke-interface/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 72
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 75
    return-void
.end method

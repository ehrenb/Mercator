.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "GridAppListWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppListDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field private tvStoreName:Landroid/widget/TextView;

.field private tvTimeSinceModified:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method static synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 65
    .line 66
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 65
    invoke-interface {p0, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 67
    return-void
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->name:Landroid/widget/TextView;

    .line 41
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->icon:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->timeSinceModified:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->tvTimeSinceModified:Landroid/widget/TextView;

    .line 43
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->storeName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->tvStoreName:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppListDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppListDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppListDisplayable;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 47
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppListDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 48
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->tvTimeSinceModified:Landroid/widget/TextView;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getInstance(Landroid/content/Context;)Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->itemView:Landroid/view/View;

    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 59
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->tvStoreName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->tvStoreName:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 61
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    move-object v1, v2

    .line 62
    check-cast v1, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 63
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->compositeSubscription:Lrx/j/b;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->itemView:Landroid/view/View;

    invoke-static {v4}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v4

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/model/v7/listapp/App;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v3, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 69
    invoke-static {v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 70
    return-void
.end method

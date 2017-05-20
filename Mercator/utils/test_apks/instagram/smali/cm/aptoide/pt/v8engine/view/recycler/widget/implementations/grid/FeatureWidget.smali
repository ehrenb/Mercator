.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "FeatureWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private articleTitle:Landroid/widget/TextView;

.field private cardView:Landroid/support/v7/widget/CardView;

.field private image:Landroid/widget/ImageView;

.field private subtitle:Landroid/widget/TextView;

.field private thumbnail:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;

.field private url:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method static synthetic lambda$bindView$0(Landroid/support/v4/app/u;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 58
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    invoke-virtual {p0, v0}, Landroid/support/v4/app/u;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method private setCardviewMargin(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;)V
    .locals 5

    .prologue
    const/4 v1, -0x2

    .line 63
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 66
    invoke-virtual {p1, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->getMarginWidth(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v3

    .line 69
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 68
    invoke-virtual {p1, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->getMarginWidth(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x1e

    .line 66
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->cardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->title:Landroid/widget/TextView;

    .line 37
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->subtitle:Landroid/widget/TextView;

    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->image:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->articleTitle:Landroid/widget/TextView;

    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->thumbnail:Landroid/widget/ImageView;

    .line 41
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->url:Landroid/view/View;

    .line 44
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->cardView:Landroid/support/v7/widget/CardView;

    .line 45
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;)V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->articleTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->getTitleResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->setCardviewMargin(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;)V

    .line 53
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->getAvatarResource()I

    move-result v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 54
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 56
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;->url:Landroid/view/View;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget$$Lambda$1;->lambdaFactory$(Landroid/support/v4/app/u;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 57
    invoke-virtual {v2, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 60
    return-void
.end method

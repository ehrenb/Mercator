.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppViewSuggestedAppWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private appNameTextView:Landroid/widget/TextView;

.field private descriptionTextView:Landroid/widget/TextView;

.field private iconImageView:Landroid/widget/ImageView;

.field private layout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method static synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/database/realm/MinimalAd;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 48
    .line 49
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(Lcm/aptoide/pt/database/realm/MinimalAd;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 48
    invoke-interface {p0, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->layout:Landroid/view/View;

    .line 33
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->iconImageView:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->appNameTextView:Landroid/widget/TextView;

    .line 35
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->descriptionTextView:Landroid/widget/TextView;

    .line 36
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppDisplayable;)V
    .locals 5

    .prologue
    .line 39
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 41
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/MinimalAd;->getIconPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 43
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->appNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/MinimalAd;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/MinimalAd;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcm/aptoide/pt/utils/AptoideUtils$HtmlU;->parse(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    check-cast v1, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 47
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->compositeSubscription:Lrx/j/b;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;->layout:Landroid/view/View;

    invoke-static {v3}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v3

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/database/realm/MinimalAd;)Lrx/b/b;

    move-result-object v0

    .line 48
    invoke-virtual {v3, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 50
    return-void
.end method

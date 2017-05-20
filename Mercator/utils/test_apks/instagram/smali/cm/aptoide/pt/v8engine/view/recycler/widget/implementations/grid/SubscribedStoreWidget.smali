.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "SubscribedStoreWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private storeAvatar:Landroid/widget/ImageView;

.field private storeLayout:Landroid/widget/LinearLayout;

.field private storeName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_avatar_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 37
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_name_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->storeName:Landroid/widget/TextView;

    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_main_layout_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->storeLayout:Landroid/widget/LinearLayout;

    .line 39
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;)V
    .locals 6

    .prologue
    .line 43
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Store;

    .line 45
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->storeLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 48
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->storeLayout:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 54
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getStoreId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$drawable;->ic_avatar_apps:I

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeaderInt()I

    move-result v0

    .line 57
    invoke-virtual {v1, v2, v3, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(ILandroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getIconPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeaderInt()I

    move-result v0

    .line 61
    invoke-virtual {v1, v2, v3, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    goto :goto_0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v1

    invoke-interface {v1, v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 52
    return-void
.end method

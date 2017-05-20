.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "GridStoreWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;",
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
    .line 34
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_avatar_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_name_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->storeName:Landroid/widget/TextView;

    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_main_layout_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->storeLayout:Landroid/widget/LinearLayout;

    .line 41
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;)V
    .locals 6

    .prologue
    .line 45
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    .line 47
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->storeLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 51
    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;Lcm/aptoide/pt/model/v7/store/Store;)Lrx/b/b;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->compositeSubscription:Lrx/j/b;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->storeLayout:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v2, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 57
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$drawable;->ic_avatar_apps:I

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 61
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Lcm/aptoide/pt/model/v7/store/Store;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeaderInt()I

    move-result v0

    .line 60
    invoke-virtual {v1, v2, v3, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(ILandroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 65
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Lcm/aptoide/pt/model/v7/store/Store;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeaderInt()I

    move-result v0

    .line 64
    invoke-virtual {v1, v2, v3, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    goto :goto_0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;Lcm/aptoide/pt/model/v7/store/Store;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v1

    .line 52
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-interface {v2, v0, v3}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 51
    invoke-interface {v1, v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

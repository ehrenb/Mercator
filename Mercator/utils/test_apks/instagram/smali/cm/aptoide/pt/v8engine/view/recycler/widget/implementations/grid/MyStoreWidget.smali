.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "MyStoreWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private exploreButton:Landroid/widget/Button;

.field private storeIcon:Landroid/widget/ImageView;

.field private storeName:Landroid/widget/TextView;

.field private widgetLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method private getColorOrDefault(Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v1

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic lambda$bindView$0(Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/store/Store;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 67
    check-cast p0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 68
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 67
    invoke-interface {p0, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->widgetLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->widgetLayout:Landroid/widget/LinearLayout;

    .line 41
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->storeIcon:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->storeName:Landroid/widget/TextView;

    .line 43
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->explore_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->exploreButton:Landroid/widget/Button;

    .line 44
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;)V
    .locals 6

    .prologue
    .line 48
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;->getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->getData()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->getColorOrDefault(Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;Landroid/content/Context;)I

    move-result v3

    .line 52
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 53
    sget v4, Lcm/aptoide/pt/v8engine/R$drawable;->dialog_bg_2:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/u;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 54
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 55
    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->widgetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :goto_0
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->exploreButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 63
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v3

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->storeIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 65
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->compositeSubscription:Lrx/j/b;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->exploreButton:Landroid/widget/Button;

    invoke-static {v4}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v4

    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;->lambdaFactory$(Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/store/Store;Ljava/lang/String;)Lrx/b/b;

    move-result-object v0

    .line 67
    invoke-virtual {v4, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 66
    invoke-virtual {v3, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 69
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcm/aptoide/pt/v8engine/R$drawable;->dialog_bg_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 58
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 59
    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->widgetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

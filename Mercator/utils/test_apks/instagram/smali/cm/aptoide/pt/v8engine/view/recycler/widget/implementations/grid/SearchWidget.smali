.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "SearchWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private bottomView:Landroid/view/View;

.field private downloadsTextView:Landroid/widget/TextView;

.field private icTrustedImageView:Landroid/widget/ImageView;

.field private iconImageView:Landroid/widget/ImageView;

.field private nameTextView:Landroid/widget/TextView;

.field private overflowImageView:Landroid/widget/ImageView;

.field private ratingBar:Landroid/widget/RatingBar;

.field private storeTextView:Landroid/widget/TextView;

.field private timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method private handleClickToOpenAppView(Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)V
    .locals 7

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1}, Lrx/b/a;->call()V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    .line 171
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v6

    .line 171
    invoke-interface/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 170
    invoke-interface {v0, v1}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 174
    return-void
.end method

.method private handleClickToOpenStore(Lrx/b/a;Landroid/view/View;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Landroid/support/v7/widget/au;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/support/v7/widget/au;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    invoke-virtual {v0}, Landroid/support/v7/widget/au;->b()Landroid/view/MenuInflater;

    move-result-object v1

    .line 133
    sget v2, Lcm/aptoide/pt/v8engine/R$menu;->menu_search_item:I

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->a()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    invoke-virtual {v0}, Landroid/support/v7/widget/au;->a()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$id;->versions:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 136
    invoke-virtual {p3}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->isHasVersions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 138
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->compositeSubscription:Lrx/j/b;

    invoke-static {v1}, Lcom/c/a/b/b;->a(Landroid/view/MenuItem;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v2, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/au;->a()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$id;->go_to_store:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->compositeSubscription:Lrx/j/b;

    invoke-static {v1}, Lcom/c/a/b/b;->a(Landroid/view/MenuItem;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v2, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 162
    invoke-virtual {v0}, Landroid/support/v7/widget/au;->c()V

    .line 163
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->nameTextView:Landroid/widget/TextView;

    .line 51
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->iconImageView:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->downloads:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->downloadsTextView:Landroid/widget/TextView;

    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->ratingbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->ratingBar:Landroid/widget/RatingBar;

    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->overflow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->overflowImageView:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->search_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->timeTextView:Landroid/widget/TextView;

    .line 56
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->search_store:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->storeTextView:Landroid/widget/TextView;

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->ic_trusted_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->icTrustedImageView:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->bottom_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->bottomView:Landroid/view/View;

    .line 59
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 62
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;

    .line 64
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;->getClickCallback()Lrx/b/a;

    move-result-object v2

    .line 65
    invoke-static {p0, v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)Lrx/b/b;

    move-result-object v1

    .line 67
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->compositeSubscription:Lrx/j/b;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->overflowImageView:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v4

    invoke-virtual {v4, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v3, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 69
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getPdownloads()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->bottomView:Landroid/view/View;

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->downloads:I

    .line 73
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->downloadsTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getRating()Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getAvg()F

    move-result v1

    .line 77
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_3

    .line 78
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v9}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 84
    :goto_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getModified()Ljava/util/Date;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getInstance(Landroid/content/Context;)Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->itemView:Landroid/view/View;

    .line 87
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffAll(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v3

    .line 96
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->bottomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    instance-of v4, v1, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v4, :cond_4

    .line 98
    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->itemView:Landroid/view/View;

    .line 99
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    :cond_1
    :goto_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->storeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 106
    instance-of v4, v1, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v4, :cond_5

    .line 107
    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->itemView:Landroid/view/View;

    .line 108
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    :cond_2
    :goto_2
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->storeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getIcon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 117
    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Rank;->TRUSTED:Lcm/aptoide/pt/model/v7/Malware$Rank;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/listapp/File;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcm/aptoide/pt/model/v7/Malware$Rank;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->icTrustedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :goto_3
    invoke-static {p0, v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)Lrx/b/b;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 126
    return-void

    .line 80
    :cond_3
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v3, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 81
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v3, v1}, Landroid/widget/RatingBar;->setRating(F)V

    goto/16 :goto_0

    .line 100
    :cond_4
    instance-of v4, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_1

    .line 101
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->itemView:Landroid/view/View;

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 101
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_1

    .line 109
    :cond_5
    instance-of v4, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_2

    .line 110
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->itemView:Landroid/view/View;

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 110
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_2

    .line 120
    :cond_6
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->icTrustedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method synthetic lambda$bindView$0(Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->overflowImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->handleClickToOpenStore(Lrx/b/a;Landroid/view/View;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)V

    return-void
.end method

.method synthetic lambda$bindView$1(Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->handleClickToOpenAppView(Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)V

    return-void
.end method

.method synthetic lambda$handleClickToOpenStore$2(Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Lrx/b/a;->call()V

    .line 143
    :cond_0
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getIcon()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v3

    .line 148
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v4

    invoke-interface {v4, v0, v1, v2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newOtherVersionsFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 147
    invoke-interface {v3, v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 149
    return-void
.end method

.method synthetic lambda$handleClickToOpenStore$3(Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Lrx/b/a;->call()V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    .line 158
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-interface {v1, v2, v3}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 157
    invoke-interface {v0, v1}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 160
    return-void
.end method

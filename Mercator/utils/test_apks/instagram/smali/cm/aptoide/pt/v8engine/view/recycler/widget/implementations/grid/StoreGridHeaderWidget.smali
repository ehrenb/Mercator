.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "StoreGridHeaderWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private more:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;->title:Landroid/widget/TextView;

    .line 27
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;->more:Landroid/widget/Button;

    .line 28
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;)V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->getWsWidget()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->hasActions()Z

    move-result v2

    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcm/aptoide/pt/v8engine/util/Translator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;->more:Landroid/widget/Button;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->isMoreVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    if-eqz v2, :cond_0

    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;->more:Landroid/widget/Button;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 45
    :cond_0
    return-void

    .line 36
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 40
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v0

    .line 41
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->getStoreTheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-interface {v1, v0, v2, v3, v4}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateUsing(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->addStepToList(Ljava/lang/String;)V

    .line 43
    return-void
.end method

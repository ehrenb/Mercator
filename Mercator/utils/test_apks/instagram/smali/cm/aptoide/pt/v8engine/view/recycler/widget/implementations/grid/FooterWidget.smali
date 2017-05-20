.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "FooterWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private button:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget;->button:Landroid/widget/Button;

    .line 31
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;)V
    .locals 3

    .prologue
    .line 34
    .line 35
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/Translator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget;->button:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;)Lrx/b/b;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget;->button:Landroid/widget/Button;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 45
    return-void
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;Ljava/lang/Void;)V
    .locals 6

    .prologue
    .line 39
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v3

    .line 42
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/Translator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-interface {v3, v1, v0, v4, v5}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreTabGridRecyclerFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 40
    invoke-interface {v2, v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 43
    return-void
.end method

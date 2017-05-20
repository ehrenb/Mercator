.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AddMoreStoresWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AddMoreStoresWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AddMoreStoresDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AddMoreStoresDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private addMoreStores:Landroid/widget/Button;


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
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->add_more_stores:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AddMoreStoresWidget;->addMoreStores:Landroid/widget/Button;

    .line 31
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AddMoreStoresDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AddMoreStoresWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AddMoreStoresDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AddMoreStoresDisplayable;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AddMoreStoresWidget;->addMoreStores:Landroid/widget/Button;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AddMoreStoresWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AddMoreStoresWidget;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method synthetic lambda$bindView$0(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AddMoreStoresWidget;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/u;

    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;-><init>()V

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AddMoreStoresWidget;->itemView:Landroid/view/View;

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    const-string v2, "addStoreDialog"

    .line 36
    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->show(Landroid/support/v4/app/y;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

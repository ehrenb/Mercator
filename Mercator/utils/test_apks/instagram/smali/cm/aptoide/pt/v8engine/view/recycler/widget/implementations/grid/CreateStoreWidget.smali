.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "CreateStoreWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CreateStoreDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private button:Landroid/widget/Button;


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
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->create_store_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->button:Landroid/widget/Button;

    .line 27
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CreateStoreDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CreateStoreDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CreateStoreDisplayable;)V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->button:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->create_store_displayable_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 35
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->button:Landroid/widget/Button;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 45
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->button:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method synthetic lambda$bindView$0(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->button:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->create_store_displayable_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    const-class v2, Lcm/aptoide/accountmanager/CreateStoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/u;->startActivity(Landroid/content/Intent;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->button:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    goto :goto_0
.end method

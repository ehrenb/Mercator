.class public abstract Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;
.source "BaseLoaderToolbarFragment.java"


# instance fields
.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->bindViews(Landroid/view/View;)V

    .line 60
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 61
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method protected hasToolbar()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 65
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->onDestroyView()V

    .line 66
    return-void
.end method

.method public setupToolbar()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->hasToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/e;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/e;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 49
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->displayHomeUpAsEnabled()Z

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/e;

    invoke-virtual {v0}, Landroid/support/v7/a/e;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public setupViews()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->setupToolbar()V

    .line 29
    return-void
.end method

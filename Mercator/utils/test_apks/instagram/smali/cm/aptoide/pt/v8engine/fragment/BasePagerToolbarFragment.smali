.class public abstract Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;
.source "BasePagerToolbarFragment.java"


# instance fields
.field protected floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field protected viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->bindViews(Landroid/view/View;)V

    .line 25
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    .line 26
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->fabAddStore:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 27
    return-void
.end method

.method protected abstract createPagerAdapter()Landroid/support/v4/view/z;
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onDestroyView()V

    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->clearOnPageChangeListeners()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    .line 33
    return-void
.end method

.method protected setupViewPager()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->createPagerAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BasePagerToolbarFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->setAdapter(Landroid/support/v4/view/z;)V

    .line 38
    return-void
.end method

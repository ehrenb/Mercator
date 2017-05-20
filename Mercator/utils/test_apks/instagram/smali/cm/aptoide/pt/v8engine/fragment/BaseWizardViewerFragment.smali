.class public Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseWizardViewerFragment.java"


# instance fields
.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private setUpListeners(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 48
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->wizard_indicator_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 49
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->wizard_skip_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->wizard_next_clickable_space:I

    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 52
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->wizard_next_arrow_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 54
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;

    invoke-direct {v4, p0, v0, v1, v3}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 95
    return-void
.end method

.method private setUpView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->viewPager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 41
    new-instance v0, Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterWizard;

    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterWizard;-><init>(Landroid/support/v4/app/y;)V

    .line 43
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/z;)V

    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 45
    return-void
.end method


# virtual methods
.method synthetic lambda$setUpListeners$0(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 59
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 30
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->wizard_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->setUpView(Landroid/view/View;)V

    .line 36
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->setUpListeners(Landroid/view/View;)V

    .line 37
    return-void
.end method

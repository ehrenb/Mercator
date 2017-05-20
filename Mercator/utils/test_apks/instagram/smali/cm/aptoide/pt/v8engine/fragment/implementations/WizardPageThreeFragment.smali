.class public Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;
.super Landroid/support/v4/app/Fragment;
.source "WizardPageThreeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$setUpListeners$0(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;ZZ)V

    .line 44
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 45
    return-void
.end method

.method synthetic lambda$setUpListeners$1(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;ZZ)V

    .line 49
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 25
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->wizard_page_three:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;->setUpListeners(Landroid/view/View;)V

    .line 27
    return-object v0
.end method

.method public setUpListeners(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 31
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->registerButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->login_link:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->login_register_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 42
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

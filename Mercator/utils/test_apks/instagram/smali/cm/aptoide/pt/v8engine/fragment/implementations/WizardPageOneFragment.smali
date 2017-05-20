.class public Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageOneFragment;
.super Landroid/support/v4/app/Fragment;
.source "WizardPageOneFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageOneFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageOneFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 22
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->wizard_page_one:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

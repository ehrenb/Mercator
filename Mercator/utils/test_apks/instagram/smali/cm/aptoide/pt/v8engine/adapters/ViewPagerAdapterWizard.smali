.class public Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterWizard;
.super Landroid/support/v4/app/ab;
.source "ViewPagerAdapterWizard.java"


# static fields
.field public static final NUMBER_OF_WIZARD_PAGES:I = 0x3


# direct methods
.method public constructor <init>(Landroid/support/v4/app/y;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/app/ab;-><init>(Landroid/support/v4/app/y;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    packed-switch p1, :pswitch_data_0

    .line 38
    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageOneFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_1
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageTwoFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_2
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

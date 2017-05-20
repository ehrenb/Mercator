.class Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;
.super Ljava/lang/Object;
.source "BaseWizardViewerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->setUpListeners(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;

.field final synthetic val$nextIcon:Landroid/widget/ImageView;

.field final synthetic val$radioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$skip:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$radioGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$skip:Landroid/widget/TextView;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$nextIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->wizard_indicator_one:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$skip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$nextIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->wizard_indicator_two:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$skip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$nextIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$1;->val$radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->wizard_indicator_three:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

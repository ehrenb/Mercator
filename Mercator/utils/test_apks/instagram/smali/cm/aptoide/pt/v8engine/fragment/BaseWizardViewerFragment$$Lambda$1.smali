.class final synthetic Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;->lambda$setUpListeners$0(Landroid/view/View;)V

    return-void
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/WizardPageThreeFragment;->lambda$setUpListeners$1(Landroid/view/View;)V

    return-void
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;

.field private final arg$2:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$3;->arg$2:Landroid/content/Intent;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;Landroid/content/Intent;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$3;->arg$2:Landroid/content/Intent;

    check-cast p1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->lambda$sendFeedback$2(Landroid/content/Intent;Lcm/aptoide/pt/database/realm/Installed;)V

    return-void
.end method

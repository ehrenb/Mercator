.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;

    # invokes: Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->fetchRollbacks()V
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->access$lambda$0(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)V

    return-void
.end method

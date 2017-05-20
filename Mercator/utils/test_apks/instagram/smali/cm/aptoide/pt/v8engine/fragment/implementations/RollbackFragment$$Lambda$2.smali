.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->lambda$fetchRollbacks$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

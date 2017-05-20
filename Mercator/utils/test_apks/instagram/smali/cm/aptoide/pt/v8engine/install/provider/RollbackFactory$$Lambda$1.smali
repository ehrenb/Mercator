.class final synthetic Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Lcm/aptoide/pt/database/realm/Rollback$Action;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$3:Lcm/aptoide/pt/database/realm/Rollback$Action;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$4:Ljava/lang/String;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$5:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$3:Lcm/aptoide/pt/database/realm/Rollback$Action;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$4:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->arg$5:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;->lambda$createRollback$0(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/database/realm/Rollback;

    move-result-object v0

    return-object v0
.end method

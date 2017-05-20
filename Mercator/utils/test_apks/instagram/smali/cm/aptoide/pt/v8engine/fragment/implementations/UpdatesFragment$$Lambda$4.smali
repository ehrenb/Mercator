.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;

.field private final arg$2:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$4;->arg$2:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;Ljava/util/List;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$4;->arg$2:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->lambda$showUpdateMessage$4(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

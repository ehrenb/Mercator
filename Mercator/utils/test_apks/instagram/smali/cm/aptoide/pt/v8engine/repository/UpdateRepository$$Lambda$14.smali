.class final synthetic Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

.field private final arg$2:Lcm/aptoide/pt/database/realm/Update;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;Lcm/aptoide/pt/database/realm/Update;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$14;->arg$1:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$14;->arg$2:Lcm/aptoide/pt/database/realm/Update;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;Lcm/aptoide/pt/database/realm/Update;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$14;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$14;-><init>(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;Lcm/aptoide/pt/database/realm/Update;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$14;->arg$1:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$14;->arg$2:Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->lambda$remove$15(Lcm/aptoide/pt/database/realm/Update;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

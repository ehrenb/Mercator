.class final synthetic Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/database/realm/Scheduled;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/database/realm/Scheduled;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$2;->arg$1:Lcm/aptoide/pt/database/realm/Scheduled;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/database/realm/Scheduled;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$2;-><init>(Lcm/aptoide/pt/database/realm/Scheduled;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$2;->arg$1:Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->lambda$setInstalling$1(Lcm/aptoide/pt/database/realm/Scheduled;)Lcm/aptoide/pt/database/realm/Scheduled;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$1;->arg$1:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/List;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$1;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$1;->arg$1:Ljava/util/List;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->lambda$setInstalling$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

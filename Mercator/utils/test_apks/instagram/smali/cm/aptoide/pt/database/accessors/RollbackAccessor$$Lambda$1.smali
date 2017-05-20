.class final synthetic Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static final instance:Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$1;

    invoke-direct {v0}, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$1;->instance:Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/concurrent/Callable;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$1;->instance:Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->lambda$getNotConfirmedRollback$0()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

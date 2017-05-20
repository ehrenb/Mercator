.class final synthetic Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# static fields
.field private static final instance:Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$4;

    invoke-direct {v0}, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$4;-><init>()V

    sput-object v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$4;->instance:Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/e;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$4;->instance:Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$4;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->lambda$getNotConfirmedRollback$3(Ljava/util/List;)Lcm/aptoide/pt/database/realm/Rollback;

    move-result-object v0

    return-object v0
.end method

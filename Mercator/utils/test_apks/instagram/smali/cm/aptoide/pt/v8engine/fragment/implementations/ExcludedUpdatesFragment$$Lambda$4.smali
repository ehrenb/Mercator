.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/database/accessors/UpdateAccessor;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/database/accessors/UpdateAccessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/database/accessors/UpdateAccessor;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$4;-><init>(Lcm/aptoide/pt/database/accessors/UpdateAccessor;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->lambda$onOptionsItemSelected$3(Lcm/aptoide/pt/database/accessors/UpdateAccessor;Ljava/util/List;)V

    return-void
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$18;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/database/realm/Update;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/database/realm/Update;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$18;->arg$1:Lcm/aptoide/pt/database/realm/Update;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/database/realm/Update;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$18;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$18;-><init>(Lcm/aptoide/pt/database/realm/Update;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$18;->arg$1:Lcm/aptoide/pt/database/realm/Update;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->lambda$null$10(Lcm/aptoide/pt/database/realm/Update;Ljava/lang/Boolean;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

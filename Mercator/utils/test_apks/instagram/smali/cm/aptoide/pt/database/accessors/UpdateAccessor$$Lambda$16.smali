.class final synthetic Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/d;


# instance fields
.field private final arg$1:Lio/realm/u;

.field private final arg$2:Z

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/realm/u;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;->arg$1:Lio/realm/u;

    iput-boolean p2, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;->arg$2:Z

    iput-object p3, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;->arg$3:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lio/realm/u;ZLjava/lang/String;)Lrx/b/d;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;-><init>(Lio/realm/u;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;->arg$1:Lio/realm/u;

    iget-boolean v1, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;->arg$2:Z

    iget-object v2, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;->arg$3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->lambda$null$9(Lio/realm/u;ZLjava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

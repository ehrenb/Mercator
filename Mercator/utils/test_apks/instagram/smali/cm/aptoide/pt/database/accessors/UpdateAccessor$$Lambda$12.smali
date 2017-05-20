.class final synthetic Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Z

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$12;->arg$1:Z

    iput-object p2, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$12;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(ZLjava/lang/String;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$12;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$12;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-boolean v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$12;->arg$1:Z

    iget-object v1, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$12;->arg$2:Ljava/lang/String;

    check-cast p1, Lio/realm/u;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->lambda$contains$10(ZLjava/lang/String;Lio/realm/u;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

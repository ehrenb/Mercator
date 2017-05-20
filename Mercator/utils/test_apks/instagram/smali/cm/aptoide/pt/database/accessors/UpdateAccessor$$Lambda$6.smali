.class final synthetic Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$6;->arg$1:Z

    return-void
.end method

.method public static lambdaFactory$(Z)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$6;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-boolean v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$6;->arg$1:Z

    check-cast p1, Lio/realm/u;

    invoke-static {v0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->lambda$getAll$3(ZLio/realm/u;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

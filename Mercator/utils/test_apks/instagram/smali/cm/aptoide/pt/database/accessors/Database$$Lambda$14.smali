.class final synthetic Lcm/aptoide/pt/database/accessors/Database$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/database/accessors/Database;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$14;->arg$1:Lcm/aptoide/pt/database/accessors/Database;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$14;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$14;-><init>(Lcm/aptoide/pt/database/accessors/Database;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$14;->arg$1:Lcm/aptoide/pt/database/accessors/Database;

    check-cast p1, Lio/realm/af;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->lambda$get$13(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

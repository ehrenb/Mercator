.class final synthetic Lcm/aptoide/pt/database/accessors/Database$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Ljava/lang/Class;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$11;->arg$1:Ljava/lang/Class;

    iput-object p2, p0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$11;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$11;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$11;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$11;->arg$1:Ljava/lang/Class;

    iget-object v1, p0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$11;->arg$2:Ljava/lang/String;

    check-cast p1, Lio/realm/u;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/database/accessors/Database;->lambda$getAllSorted$10(Ljava/lang/Class;Ljava/lang/String;Lio/realm/u;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

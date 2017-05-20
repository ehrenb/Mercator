.class final synthetic Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lio/realm/ao;


# direct methods
.method private constructor <init>(Lio/realm/ao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$2;->arg$1:Lio/realm/ao;

    return-void
.end method

.method public static lambdaFactory$(Lio/realm/ao;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$2;-><init>(Lio/realm/ao;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$2;->arg$1:Lio/realm/ao;

    check-cast p1, Lio/realm/u;

    invoke-static {v0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->lambda$getAllSorted$1(Lio/realm/ao;Lio/realm/u;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

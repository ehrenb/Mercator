.class final synthetic Lcm/aptoide/pt/database/accessors/Database$$Lambda$26;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# static fields
.field private static final instance:Lcm/aptoide/pt/database/accessors/Database$$Lambda$26;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$26;

    invoke-direct {v0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$26;-><init>()V

    sput-object v0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$26;->instance:Lcm/aptoide/pt/database/accessors/Database$$Lambda$26;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/e;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/database/accessors/Database$$Lambda$26;->instance:Lcm/aptoide/pt/database/accessors/Database$$Lambda$26;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lio/realm/ag;

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/Database;->lambda$findAsList$25(Lio/realm/ag;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Authenticator;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$1;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lokhttp3/Authenticator;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->lambda$getInstance$0(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

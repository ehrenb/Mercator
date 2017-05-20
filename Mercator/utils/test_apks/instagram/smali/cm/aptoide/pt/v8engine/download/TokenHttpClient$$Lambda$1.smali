.class final synthetic Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$1;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lokhttp3/Interceptor;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->lambda$customMake$0(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

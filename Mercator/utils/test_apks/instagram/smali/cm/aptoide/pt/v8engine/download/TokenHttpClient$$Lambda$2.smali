.class final synthetic Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/download/TokenHttpClient;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/download/TokenHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/download/TokenHttpClient;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/download/TokenHttpClient;)Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/download/TokenHttpClient;)V

    return-object v0
.end method


# virtual methods
.method public generateUserAgent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/download/TokenHttpClient;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->lambda$customMake$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

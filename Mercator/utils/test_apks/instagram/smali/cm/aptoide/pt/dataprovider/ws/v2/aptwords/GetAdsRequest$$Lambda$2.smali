.class final synthetic Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;


# static fields
.field private static final instance:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$2;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$2;-><init>()V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$2;->instance:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$2;->instance:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public generateUserAgent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class abstract Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;
.super Lcm/aptoide/pt/networkclient/WebService;
.source "Aptwords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lcm/aptoide/pt/networkclient/WebService",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;",
        "TU;>;"
    }
.end annotation


# static fields
.field private static baseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "http://webservices.aptwords.net/api/2/"

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 33
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v1

    .line 34
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;->isDebug()Z

    move-result v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->getSingletonClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 35
    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v2

    sget-object v3, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;->baseUrl:Ljava/lang/String;

    .line 33
    invoke-direct {p0, v0, v1, v2, v3}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;

    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;->baseUrl:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1, v2}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$new$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;->baseUrl:Ljava/lang/String;

    return-void
.end method

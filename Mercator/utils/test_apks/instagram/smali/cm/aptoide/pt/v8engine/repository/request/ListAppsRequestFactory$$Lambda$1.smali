.class final synthetic Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/interfaces/AptoideClientUUID;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$1;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcm/aptoide/pt/interfaces/AptoideClientUUID;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$1;->instance:Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public getUniqueIdentifier()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;->lambda$new$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

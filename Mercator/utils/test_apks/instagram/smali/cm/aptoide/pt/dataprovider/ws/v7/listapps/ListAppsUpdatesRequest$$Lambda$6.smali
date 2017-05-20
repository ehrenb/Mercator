.class final synthetic Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# static fields
.field private static final instance:Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$6;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$6;-><init>()V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$6;->instance:Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$6;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/e;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$6;->instance:Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$6;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->lambda$null$4(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

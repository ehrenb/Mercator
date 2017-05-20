.class final synthetic Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$9;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$9;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$9;->instance:Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$9;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/e;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$9;->instance:Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$9;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->lambda$getRandomInstalledPackages$8(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

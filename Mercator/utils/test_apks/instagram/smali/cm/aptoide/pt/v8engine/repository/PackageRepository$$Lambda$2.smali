.class final synthetic Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/f;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$2;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$2;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$2;->instance:Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/f;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$2;->instance:Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Landroid/content/pm/PackageInfo;

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->lambda$getLatestInstalledPackages$1(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/PackageRepository;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/PackageRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/repository/PackageRepository;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PackageRepository;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$6;-><init>(Lcm/aptoide/pt/v8engine/repository/PackageRepository;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PackageRepository$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/repository/PackageRepository;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->lambda$getCachedInstalledPackages$5()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

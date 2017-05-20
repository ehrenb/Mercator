.class final synthetic Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

.field private final arg$2:Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$17;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$17;->arg$2:Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$17;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$17;-><init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$17;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$17;->arg$2:Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->lambda$null$3(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

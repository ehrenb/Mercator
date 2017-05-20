.class final synthetic Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;

.field private final arg$2:Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;

.field private final arg$3:Lcm/aptoide/pt/database/realm/Rollback$Action;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;->arg$2:Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;->arg$3:Lcm/aptoide/pt/database/realm/Rollback$Action;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;-><init>(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;->arg$2:Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;->arg$3:Lcm/aptoide/pt/database/realm/Rollback$Action;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->lambda$saveRollback$8(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

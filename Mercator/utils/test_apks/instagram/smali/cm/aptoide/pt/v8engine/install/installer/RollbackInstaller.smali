.class public Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;
.super Ljava/lang/Object;
.source "RollbackInstaller.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/install/Installer;


# instance fields
.field private final defaultInstaller:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

.field private final installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

.field private final repository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

.field private final rollbackFactory:Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Lcm/aptoide/pt/v8engine/repository/RollbackRepository;Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->defaultInstaller:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    .line 29
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->repository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    .line 30
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->rollbackFactory:Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;

    .line 31
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

    .line 32
    return-void
.end method

.method private saveRollback(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/database/realm/Rollback$Action;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->rollbackFactory:Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;->createRollback(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;)Lrx/b/e;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private saveRollback(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;",
            "Lcm/aptoide/pt/database/realm/Rollback$Action;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public downgrade(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    const-class v1, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;

    .line 55
    invoke-virtual {v0, v1}, Lrx/d;->a(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Landroid/content/Context;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public install(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    const-class v1, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;

    .line 40
    invoke-virtual {v0, v1}, Lrx/d;->a(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;)Lrx/b/e;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Landroid/content/Context;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public isInstalled(Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->defaultInstaller:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->isInstalled(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$downgrade$4(Landroid/content/Context;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Lrx/d;
    .locals 6

    .prologue
    .line 56
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcm/aptoide/pt/database/realm/Rollback$Action;->DOWNGRADE:Lcm/aptoide/pt/database/realm/Rollback$Action;

    .line 57
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getVersionName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 56
    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->saveRollback(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$downgrade$5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->defaultInstaller:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->downgrade(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$install$0(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Lrx/d;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcm/aptoide/pt/database/realm/Rollback$Action;->INSTALL:Lcm/aptoide/pt/database/realm/Rollback$Action;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->saveRollback(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$install$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->defaultInstaller:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->install(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$saveRollback$7(Lcm/aptoide/pt/database/realm/Rollback;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->repository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->save(Lcm/aptoide/pt/database/realm/Rollback;)V

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$saveRollback$8(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->repository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->rollbackFactory:Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;

    invoke-virtual {v1, p1, p2}, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;->createRollback(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)Lcm/aptoide/pt/database/realm/Rollback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->save(Lcm/aptoide/pt/database/realm/Rollback;)V

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$uninstall$6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->defaultInstaller:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    invoke-virtual {v0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->uninstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$update$2(Landroid/content/Context;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Lrx/d;
    .locals 6

    .prologue
    .line 48
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcm/aptoide/pt/database/realm/Rollback$Action;->UPDATE:Lcm/aptoide/pt/database/realm/Rollback$Action;

    .line 49
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getVersionName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 48
    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->saveRollback(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$update$3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->defaultInstaller:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->update(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public uninstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v3, Lcm/aptoide/pt/database/realm/Rollback$Action;->UNINSTALL:Lcm/aptoide/pt/database/realm/Rollback$Action;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->saveRollback(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;->installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    const-class v1, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;

    .line 47
    invoke-virtual {v0, v1}, Lrx/d;->a(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;Landroid/content/Context;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

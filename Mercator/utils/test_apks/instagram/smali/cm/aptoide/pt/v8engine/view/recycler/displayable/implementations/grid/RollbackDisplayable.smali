.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "RollbackDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<",
        "Lcm/aptoide/pt/database/realm/Rollback;",
        ">;"
    }
.end annotation


# instance fields
.field private installManager:Lcm/aptoide/pt/v8engine/install/Installer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/install/Installer;Lcm/aptoide/pt/database/realm/Rollback;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;-><init>(Lcm/aptoide/pt/v8engine/install/Installer;Lcm/aptoide/pt/database/realm/Rollback;Z)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lcm/aptoide/pt/v8engine/install/Installer;Lcm/aptoide/pt/database/realm/Rollback;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->installManager:Lcm/aptoide/pt/v8engine/install/Installer;

    .line 36
    return-void
.end method


# virtual methods
.method public downgrade(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->openAppview(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    .line 66
    return-void
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getDownloadFromPojo()Lcm/aptoide/pt/database/realm/Download;
    .locals 2

    .prologue
    .line 39
    new-instance v1, Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->create(Lcm/aptoide/pt/database/realm/Rollback;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->rollback_row:I

    return v0
.end method

.method public install(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->openAppview(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    .line 52
    return-void
.end method

.method public openAppview(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V
    .locals 2

    .prologue
    .line 55
    .line 56
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 55
    invoke-interface {p1, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 57
    return-void
.end method

.method public uninstall(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcm/aptoide/pt/database/realm/Download;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->installManager:Lcm/aptoide/pt/v8engine/install/Installer;

    .line 61
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-interface {v1, p1, v0, v2}, Lcm/aptoide/pt/v8engine/install/Installer;->uninstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;->openAppview(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    .line 70
    return-void
.end method

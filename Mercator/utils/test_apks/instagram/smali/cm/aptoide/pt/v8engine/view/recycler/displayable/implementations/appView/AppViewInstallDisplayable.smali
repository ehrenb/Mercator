.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;
.source "AppViewInstallDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;,
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$ButtonState;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNGRADE:I = 0x2

.field public static final ACTION_INSTALL:I = 0x0

.field public static final ACTION_INSTALLING:I = 0x4

.field private static final ACTION_NO_STATE:I = -0x1

.field public static final ACTION_OPEN:I = 0x3

.field public static final ACTION_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentApp:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

.field private installButton:Landroid/widget/Button;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

.field private md5:Ljava/lang/String;

.field private minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

.field private packageName:Ljava/lang/String;

.field private rollbackRepository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

.field private shouldInstall:Z

.field private widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/database/realm/MinimalAd;ZLcm/aptoide/pt/v8engine/repository/InstalledRepository;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 87
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 88
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMd5sum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->md5:Ljava/lang/String;

    .line 89
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->packageName:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->currentApp:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    .line 91
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 92
    iput-boolean p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->shouldInstall:Z

    .line 93
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getRollbackRepository()Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->rollbackRepository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    .line 94
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    .line 95
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;I)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    .line 96
    return-void
.end method

.method private getInstallationObservable(Ljava/lang/String;Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/v8engine/InstallManager;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p2, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->getAsListInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getInstalledAppObservable(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/repository/InstalledRepository;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetAppMeta$App;",
            "Lcm/aptoide/pt/v8engine/repository/InstalledRepository;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->getAsList(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/database/realm/MinimalAd;ZLcm/aptoide/pt/v8engine/repository/InstalledRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;
    .locals 6

    .prologue
    .line 100
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;-><init>(Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/database/realm/MinimalAd;ZLcm/aptoide/pt/v8engine/repository/InstalledRepository;)V

    return-object v0
.end method


# virtual methods
.method public buyApp(Landroid/content/Context;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 3

    .prologue
    .line 105
    check-cast p1, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->getLastV4()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 106
    const-class v1, Lcm/aptoide/pt/v8engine/interfaces/Payments;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/Payments;

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/interfaces/Payments;->buyApp(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    .line 109
    :cond_0
    return-void
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getMinimalAd()Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    return-object v0
.end method

.method public getState()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->md5:Ljava/lang/String;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getInstallationObservable(Ljava/lang/String;Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 126
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_app_view_install:I

    return v0
.end method

.method public isShouldInstall()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->shouldInstall:Z

    return v0
.end method

.method synthetic lambda$getInstallationObservable$1(Lcm/aptoide/pt/v8engine/Progress;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;
    .locals 2

    .prologue
    .line 162
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 166
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    const/4 v1, 0x4

    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->setButtonState(I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->access$000(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;I)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->setProgress(Lcm/aptoide/pt/v8engine/Progress;)V
    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->access$100(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;Lcm/aptoide/pt/v8engine/Progress;)V

    .line 171
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    return-object v0

    .line 168
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    const/4 v1, -0x1

    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->setButtonState(I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->access$000(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;I)V

    goto :goto_0
.end method

.method synthetic lambda$getInstalledAppObservable$2(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Ljava/util/List;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 178
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 179
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    .line 180
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVercode()I

    move-result v1

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getVersionCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 181
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    const/4 v1, 0x3

    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->setButtonState(I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->access$000(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;I)V

    .line 190
    :cond_0
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    return-object v0

    .line 182
    :cond_1
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVercode()I

    move-result v1

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getVersionCode()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 183
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    const/4 v1, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->setButtonState(I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->access$000(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;I)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVercode()I

    move-result v1

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getVersionCode()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    const/4 v1, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->setButtonState(I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->access$000(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;I)V

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->widgetState:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;

    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->setButtonState(I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->access$000(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;I)V

    goto :goto_0
.end method

.method synthetic lambda$getState$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;)Lrx/d;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->getButtonState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->currentApp:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getInstalledAppObservable(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/repository/InstalledRepository;)Lrx/d;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onPause()V

    .line 146
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onResume()V

    .line 141
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 136
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->TAG:Ljava/lang/String;

    const-string v1, "onViewStateRestored"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setInstallButton(Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->installButton:Landroid/widget/Button;

    .line 119
    return-void
.end method

.method public bridge synthetic setOnPauseAction(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->setOnPauseAction(Lrx/b/a;)V

    return-void
.end method

.method public bridge synthetic setOnResumeAction(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDisplayable;->setOnResumeAction(Lrx/b/a;)V

    return-void
.end method

.method public setShouldInstall(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->shouldInstall:Z

    return-void
.end method

.method public startInstallationProcess()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->installButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->installButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 115
    :cond_0
    return-void
.end method

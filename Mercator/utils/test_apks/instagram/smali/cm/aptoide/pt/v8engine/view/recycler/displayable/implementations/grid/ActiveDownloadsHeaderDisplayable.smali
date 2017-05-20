.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "ActiveDownloadsHeaderDisplayable.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/v8engine/InstallManager;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;->label:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 24
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->active_downloads_header_row:I

    return v0
.end method

.method public pauseAllDownloads(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->stopAllInstallations(Landroid/content/Context;)V

    .line 36
    return-void
.end method

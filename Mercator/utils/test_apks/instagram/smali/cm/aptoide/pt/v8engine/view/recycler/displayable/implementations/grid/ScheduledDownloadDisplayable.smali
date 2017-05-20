.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/SelectableDisplayablePojo;
.source "ScheduledDownloadDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/SelectableDisplayablePojo",
        "<",
        "Lcm/aptoide/pt/database/realm/Scheduled;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SelectableDisplayablePojo;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/database/realm/Scheduled;Lcm/aptoide/pt/v8engine/InstallManager;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SelectableDisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 29
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 30
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getInstallManager()Lcm/aptoide/pt/v8engine/InstallManager;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_scheduled_download_row:I

    return v0
.end method

.method public removeFromDatabase()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Scheduled;->getMd5()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->delete(Ljava/lang/String;)V

    .line 43
    return-void
.end method

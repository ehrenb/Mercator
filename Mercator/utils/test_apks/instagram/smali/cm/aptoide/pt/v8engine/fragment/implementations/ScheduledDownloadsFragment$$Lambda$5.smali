.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

.field private final arg$2:Lcm/aptoide/pt/v8engine/InstallManager;

.field private final arg$3:Landroid/content/Context;

.field private final arg$4:Z


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;->arg$2:Lcm/aptoide/pt/v8engine/InstallManager;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;->arg$3:Landroid/content/Context;

    iput-boolean p4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;->arg$4:Z

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;Z)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;->arg$2:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;->arg$3:Landroid/content/Context;

    iget-boolean v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;->arg$4:Z

    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->lambda$downloadAndInstallScheduledList$9(Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;ZLcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

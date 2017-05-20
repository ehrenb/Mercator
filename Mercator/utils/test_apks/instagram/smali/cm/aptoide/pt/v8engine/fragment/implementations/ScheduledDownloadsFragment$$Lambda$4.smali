.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/util/DownloadFactory;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/util/DownloadFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/util/DownloadFactory;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/util/DownloadFactory;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    check-cast p1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->lambda$downloadAndInstallScheduledList$5(Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/database/realm/Scheduled;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v0

    return-object v0
.end method

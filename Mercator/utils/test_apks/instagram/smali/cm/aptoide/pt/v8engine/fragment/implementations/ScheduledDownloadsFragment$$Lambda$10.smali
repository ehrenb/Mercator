.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

.field private final arg$2:Lcm/aptoide/pt/database/realm/Download;

.field private final arg$3:Z


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/database/realm/Download;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    iput-boolean p3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;->arg$3:Z

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/database/realm/Download;Z)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/database/realm/Download;Z)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;->arg$3:Z

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->lambda$null$6(Lcm/aptoide/pt/database/realm/Download;Z)V

    return-void
.end method

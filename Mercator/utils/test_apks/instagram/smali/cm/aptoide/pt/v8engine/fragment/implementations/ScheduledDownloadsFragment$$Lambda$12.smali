.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

.field private final arg$2:Lcm/aptoide/pt/database/realm/Download;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$12;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$12;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$12;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$12;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/database/realm/Download;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$12;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$12;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    check-cast p1, Lcm/aptoide/pt/v8engine/Progress;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->lambda$null$8(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/Progress;)V

    return-void
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$19;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

.field private final arg$2:Lcm/aptoide/pt/model/v7/Datalist;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Lcm/aptoide/pt/model/v7/Datalist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$19;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$19;->arg$2:Lcm/aptoide/pt/model/v7/Datalist;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Lcm/aptoide/pt/model/v7/Datalist;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$19;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$19;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Lcm/aptoide/pt/model/v7/Datalist;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$19;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$19;->arg$2:Lcm/aptoide/pt/model/v7/Datalist;

    check-cast p1, Lcm/aptoide/pt/model/v7/TimelineStats;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->lambda$null$7(Lcm/aptoide/pt/model/v7/Datalist;Lcm/aptoide/pt/model/v7/TimelineStats;)Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/timeline/TimelineCard;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$6;->arg$1:Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$6;-><init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$6;->arg$1:Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    check-cast p1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->lambda$filterAlreadyDoneUpdates$5(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Lcm/aptoide/pt/database/realm/Installed;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

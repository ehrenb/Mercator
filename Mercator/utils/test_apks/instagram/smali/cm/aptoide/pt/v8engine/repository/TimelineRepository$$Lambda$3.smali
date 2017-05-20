.class final synthetic Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/TimelineRepository;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/TimelineRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/repository/TimelineRepository;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/TimelineRepository;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/repository/TimelineRepository;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/repository/TimelineRepository;

    check-cast p1, Lcm/aptoide/pt/model/v7/Datalist;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->lambda$getTimelineCards$4(Lcm/aptoide/pt/model/v7/Datalist;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/AppRepository;

.field private final arg$2:Z

.field private final arg$3:Z

.field private final arg$4:J


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/AppRepository;ZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    iput-boolean p2, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;->arg$2:Z

    iput-boolean p3, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;->arg$3:Z

    iput-wide p4, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;->arg$4:J

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/AppRepository;ZZJ)Lrx/b/e;
    .locals 7

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/repository/AppRepository;ZZJ)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;->arg$2:Z

    iget-boolean v3, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;->arg$3:Z

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;->arg$4:J

    move-object v6, p1

    check-cast v6, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-virtual/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->lambda$getApp$0(ZZJLcm/aptoide/pt/model/v7/GetApp;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/AppRepository;

.field private final arg$2:Z

.field private final arg$3:Z

.field private final arg$4:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/AppRepository;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    iput-boolean p2, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;->arg$2:Z

    iput-boolean p3, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;->arg$3:Z

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;->arg$4:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/AppRepository;ZZLjava/lang/String;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;-><init>(Lcm/aptoide/pt/v8engine/repository/AppRepository;ZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    iget-boolean v1, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;->arg$2:Z

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;->arg$3:Z

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;->arg$4:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->lambda$getAppFromMd5$5(ZZLjava/lang/String;Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

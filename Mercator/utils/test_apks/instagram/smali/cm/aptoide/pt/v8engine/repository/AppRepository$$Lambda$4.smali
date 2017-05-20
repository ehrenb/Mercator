.class final synthetic Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:J

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$4;->arg$1:J

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$4;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(JLjava/lang/String;)Lrx/b/e;
    .locals 2

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$4;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$4;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$4;->arg$1:J

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$4;->arg$2:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/model/v3/PaidApp;

    invoke-static {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->lambda$getPaidApp$3(JLjava/lang/String;Lcm/aptoide/pt/model/v3/PaidApp;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

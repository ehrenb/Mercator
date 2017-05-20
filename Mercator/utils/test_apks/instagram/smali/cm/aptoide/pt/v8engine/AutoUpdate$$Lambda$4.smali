.class final synthetic Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/AutoUpdate;

.field private final arg$2:Lcm/aptoide/pt/v8engine/InstallManager;

.field private final arg$3:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/AutoUpdate;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/InstallManager;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;->arg$3:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/AutoUpdate;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;->arg$3:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate;->lambda$null$1(Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;Ljava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/Progress;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$16;->arg$1:Lcm/aptoide/pt/v8engine/Progress;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/Progress;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$16;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$16;-><init>(Lcm/aptoide/pt/v8engine/Progress;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$16;->arg$1:Lcm/aptoide/pt/v8engine/Progress;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->lambda$startBackgroundInstallationAndWait$16(Lcm/aptoide/pt/v8engine/Progress;Ljava/lang/Void;)Lcm/aptoide/pt/v8engine/Progress;

    move-result-object v0

    return-object v0
.end method

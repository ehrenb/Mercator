.class final synthetic Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/database/realm/Download;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$2;->arg$1:Lcm/aptoide/pt/database/realm/Download;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$2;-><init>(Lcm/aptoide/pt/database/realm/Download;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$2;->arg$1:Lcm/aptoide/pt/database/realm/Download;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->lambda$convertToProgress$2(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Integer;)Lcm/aptoide/pt/v8engine/Progress;

    move-result-object v0

    return-object v0
.end method

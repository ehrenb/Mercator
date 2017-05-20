.class final synthetic Lcm/aptoide/pt/utils/FileUtils$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/utils/FileUtils;

.field private final arg$2:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/utils/FileUtils;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/utils/FileUtils$$Lambda$3;->arg$1:Lcm/aptoide/pt/utils/FileUtils;

    iput-object p2, p0, Lcm/aptoide/pt/utils/FileUtils$$Lambda$3;->arg$2:Ljava/io/File;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/utils/FileUtils;Ljava/io/File;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/utils/FileUtils$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/utils/FileUtils$$Lambda$3;-><init>(Lcm/aptoide/pt/utils/FileUtils;Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/utils/FileUtils$$Lambda$3;->arg$1:Lcm/aptoide/pt/utils/FileUtils;

    iget-object v1, p0, Lcm/aptoide/pt/utils/FileUtils$$Lambda$3;->arg$2:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/utils/FileUtils;->lambda$null$0(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# static fields
.field private static final instance:Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$8;

    invoke-direct {v0}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$8;-><init>()V

    sput-object v0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$8;->instance:Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$8;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/a;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$8;->instance:Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$8;

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->lambda$completed$8()V

    return-void
.end method

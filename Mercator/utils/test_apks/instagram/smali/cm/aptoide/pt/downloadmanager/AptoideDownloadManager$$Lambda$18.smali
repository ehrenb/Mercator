.class final synthetic Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$18;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# static fields
.field private static final instance:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$18;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$18;

    invoke-direct {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$18;-><init>()V

    sput-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$18;->instance:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$18;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/e;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$18;->instance:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$18;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->lambda$removeDownload$20(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

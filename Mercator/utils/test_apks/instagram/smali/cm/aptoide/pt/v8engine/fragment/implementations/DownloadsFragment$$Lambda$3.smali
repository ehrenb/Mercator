.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->lambda$onViewCreated$4(Ljava/util/List;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

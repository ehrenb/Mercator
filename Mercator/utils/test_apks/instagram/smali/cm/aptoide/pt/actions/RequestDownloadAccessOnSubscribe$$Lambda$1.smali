.class final synthetic Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lrx/j;


# direct methods
.method private constructor <init>(Lrx/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe$$Lambda$1;->arg$1:Lrx/j;

    return-void
.end method

.method public static lambdaFactory$(Lrx/j;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe$$Lambda$1;-><init>(Lrx/j;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe$$Lambda$1;->arg$1:Lrx/j;

    invoke-static {v0}, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe;->lambda$call$0(Lrx/j;)V

    return-void
.end method

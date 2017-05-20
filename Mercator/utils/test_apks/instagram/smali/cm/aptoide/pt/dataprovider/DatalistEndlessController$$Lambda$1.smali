.class final synthetic Lcm/aptoide/pt/dataprovider/DatalistEndlessController$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/dataprovider/DatalistEndlessController;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/DatalistEndlessController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController$$Lambda$1;->arg$1:Lcm/aptoide/pt/dataprovider/DatalistEndlessController;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/dataprovider/DatalistEndlessController;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/dataprovider/DatalistEndlessController$$Lambda$1;-><init>(Lcm/aptoide/pt/dataprovider/DatalistEndlessController;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController$$Lambda$1;->arg$1:Lcm/aptoide/pt/dataprovider/DatalistEndlessController;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->lambda$loadMore$0()V

    return-void
.end method

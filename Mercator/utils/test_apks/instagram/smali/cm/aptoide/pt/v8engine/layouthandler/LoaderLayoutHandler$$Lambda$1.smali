.class final synthetic Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

.field private final arg$2:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$1;->arg$2:Ljava/lang/Throwable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;Ljava/lang/Throwable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$1;->arg$2:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->lambda$finishLoading$0(Ljava/lang/Throwable;)V

    return-void
.end method

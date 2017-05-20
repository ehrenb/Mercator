.class final synthetic Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;)Landroid/support/v4/widget/SwipeRefreshLayout$b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;)V

    return-object v0
.end method


# virtual methods
.method public onRefresh()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->lambda$bindViews$0()V

    return-void
.end method

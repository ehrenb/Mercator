.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$20;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/Datalist;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/Datalist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$20;->arg$1:Lcm/aptoide/pt/model/v7/Datalist;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/Datalist;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$20;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$20;-><init>(Lcm/aptoide/pt/model/v7/Datalist;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$20;->arg$1:Lcm/aptoide/pt/model/v7/Datalist;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->lambda$null$8(Lcm/aptoide/pt/model/v7/Datalist;Ljava/lang/Throwable;)Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    return-object v0
.end method

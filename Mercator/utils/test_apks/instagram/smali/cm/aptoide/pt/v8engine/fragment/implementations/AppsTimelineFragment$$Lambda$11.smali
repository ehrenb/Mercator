.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

.field private final arg$2:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$11;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$11;->arg$2:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Ljava/util/List;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$11;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$11;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$11;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$11;->arg$2:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->lambda$getNextDisplayables$12(Ljava/util/List;Ljava/lang/Integer;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

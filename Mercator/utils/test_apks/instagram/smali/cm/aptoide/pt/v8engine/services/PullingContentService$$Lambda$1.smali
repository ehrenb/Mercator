.class final synthetic Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/services/PullingContentService;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/services/PullingContentService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/services/PullingContentService;

    iput p2, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$1;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/services/PullingContentService;I)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/services/PullingContentService;I)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/services/PullingContentService;

    iget v1, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$1;->arg$2:I

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->lambda$setUpdatesAction$0(ILjava/util/List;)V

    return-void
.end method

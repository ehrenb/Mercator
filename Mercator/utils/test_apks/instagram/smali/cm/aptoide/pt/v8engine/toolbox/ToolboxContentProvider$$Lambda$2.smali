.class final synthetic Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/util/Map$Entry;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider$$Lambda$2;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider$$Lambda$2;->arg$2:Ljava/util/Map$Entry;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;Ljava/util/Map$Entry;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider$$Lambda$2;-><init>(Landroid/content/Context;Ljava/util/Map$Entry;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider$$Lambda$2;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider$$Lambda$2;->arg$2:Ljava/util/Map$Entry;

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->lambda$update$1(Landroid/content/Context;Ljava/util/Map$Entry;)V

    return-void
.end method

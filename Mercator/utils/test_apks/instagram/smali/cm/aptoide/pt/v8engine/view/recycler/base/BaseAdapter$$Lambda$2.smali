.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$2;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$2;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->lambda$addDisplayable$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    return-void
.end method

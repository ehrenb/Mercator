.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

.field private final arg$2:I

.field private final arg$3:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    iput p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;->arg$2:I

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;->arg$3:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;ILjava/util/List;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    iget v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;->arg$2:I

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter$$Lambda$4;->arg$3:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->lambda$addDisplayables$3(ILjava/util/List;)V

    return-void
.end method
